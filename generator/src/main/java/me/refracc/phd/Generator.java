package me.refracc.phd;

import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

import java.io.*;
import java.util.*;

public class Generator {

  public static void main(String[] args) {
    List<String> constants = Collections.synchronizedList(new ArrayList<>());
    List<String> names = Collections.synchronizedList(new ArrayList<>());
    List<String> objects = Collections.synchronizedList(new ArrayList<>());

    Thread constantsThread = new Thread(() -> constants.addAll(read("constants.txt")));
    Thread namesThread = new Thread(() -> names.addAll(read("names.txt")));
    Thread objectsThread = new Thread(() -> objects.addAll(read("objects.txt")));

    constantsThread.start();
    namesThread.start();
    objectsThread.start();

    try {
      constantsThread.join();
      namesThread.join();
      objectsThread.join();
    } catch (InterruptedException e) {
      e.printStackTrace();
    }

    final List<Thread> writingThreads = threads(objects, names);

    for (Thread thread : writingThreads) {
      try {
        thread.join();
      } catch (InterruptedException e) {
        e.printStackTrace();
      }
    }
  }

  @NotNull
  private static List<Thread> threads(List<String> objects, List<String> names) {
    Random random = new Random(27356876234L);

    List<Thread> writingThreads = new ArrayList<>();

    for (int i = 0; i < 50; i++) {
      final int index = i;
      Thread writingThread = new Thread(() -> {
        String outputFile = "p" + index + ".pddl";
        try (PrintWriter writer = new PrintWriter(new FileWriter(outputFile))) {
          String problemDescription = generateProblem(index, objects, names, random);
          writer.println(problemDescription);
          System.out.println("Problem description written to " + outputFile);
        } catch (IOException e) {
          e.printStackTrace();
        }
      });

      writingThreads.add(writingThread);
      writingThread.start();
    }
    return writingThreads;
  }

  @Contract(pure = true)
  private static @NotNull List<String> read(String name) {
    List<String> list = new ArrayList<>();
    try (BufferedReader br = new BufferedReader(new InputStreamReader(Generator.class.getClassLoader().getResourceAsStream(name)))) {
      String line;
      while ((line = br.readLine()) != null) {
        list.add(line);
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
    return list;
  }

  private static @NotNull String courseGeneration(String student, StringBuilder goal) {
    Map<String, Map<Course, Level>> allocation = new HashMap<>();
    List<Course> courses = List.of(Course.values());
    List<Level> levels = List.of(Level.values());
    StringBuilder pddlProblem = new StringBuilder();

    for (int i = 0; i < 6; i++) {
      // Randomly select a course and level for the student
      Course randomCourse = getRandomElement(courses);
      Level randomLevel = getRandomElement(levels);

      // Check if the student already has the selected course
      allocation.computeIfAbsent(student, k -> new HashMap<>())
          .putIfAbsent(randomCourse, randomLevel);

      // Add predicates for the course and level
      addPredicate(pddlProblem, "takes-course", student, randomCourse.getCourseName(), randomLevel.getLevelDescription());

      // Determine the grade predicate value based on the level
      Grades randomGrade = (randomLevel == Level.ADV_HIGHER || randomLevel == Level.HIGHER || randomLevel == Level.NATIONAL_FIVE) ?
          getRandomElement(Arrays.asList(Grades.A, Grades.B, Grades.C, Grades.D)) :
          Grades.P;

      // Add predicate for the grade
      addPredicate(pddlProblem, "grade", randomGrade.getGradeValue(), student, randomCourse.getCourseName(), randomLevel.getLevelDescription());

      // Add goal condition for finished-course predicate
      addPredicate(goal, "finished-course", student, randomCourse.getCourseName(), randomLevel.getLevelDescription());
    }

    Random r1 = new Random();
    Random r2 = new Random();

    if (r1.nextInt(101) > 75) {
      String support = getRandomElement(List.of(SupportRequirement.values())).getValue();
      addPredicate(pddlProblem, "has-support-need", student, support);

      switch (support) {
        case "asc-asd" ->  {
          addPredicate(goal, "given-support", student, "improving-comms-workshop");
          addPredicate(goal, "given-support", student, "tech-assist");
          addPredicate(goal, "given-support", student, "pomo");
          addPredicate(goal, "given-support", student, "gamify-learning");
        }
        case "social-other" -> addPredicate(goal, "given-support", student, "improving-comms-workshop");
        case "tourettes" -> {
          addPredicate(goal, "given-support", student, "isolated");
          addPredicate(goal, "given-support", student, "gamify-learning");
        }
        case "deaf-hearing" -> addPredicate(goal, "given-support", student, "tech-assist");
        case "blind-visual" -> {
          addPredicate(goal, "given-support", student, "tech-assist");
          addPredicate(goal, "given-support", student, "reading-group");
        }
        case "language" -> {
          addPredicate(goal, "given-support", student, "reading-group");
          addPredicate(goal, "given-support", student, "tech-assist");
        }
        default -> throw new IllegalStateException("Unexpected value: " + support);
      }
    }
    if (r2.nextInt(101) > 50) {
      String strategy = getRandomElement(List.of(Strategy.values())).getValue();
      addPredicate(pddlProblem, "uses-strategy", student, strategy);

      switch(strategy) {
        case "teamwork" -> {
          addPredicate(goal, "given-support", student, "improving-comms-workshop");
          addPredicate(goal, "given-support", student, "pomo");
        }
        case "student-led-class", "flex-seating", "project-based" -> addPredicate(goal, "given-support", student, "improving-comms-workshop");
        case "technological-tools" -> addPredicate(goal, "given-support", student, "tech-assist");
        case "gamification" -> addPredicate(goal, "given-support", student, "gamify-learning");
        case "blended-learning" -> {
          addPredicate(goal, "given-support", student, "improving-comms-workshop");
          addPredicate(goal, "given-support", student, "tech-assist");
          addPredicate(goal, "given-support", student, "gamify-learning");
        }
        case "interdisc-teaching" -> System.out.println("Adopting interdisciplinary teaching approaches.");
        default -> throw new IllegalStateException("Unexpected value: " + strategy);
      }
    }

    return pddlProblem.toString();
  }

  private static @NotNull String generateProblem(int problemIndex, @NotNull List<String> objects, @NotNull List<String> names, @NotNull Random random) {
    List<String> students = Collections.synchronizedList(new ArrayList<>());
    StringBuilder problemDescription = new StringBuilder();

    problemDescription.append("(define (problem p").append(problemIndex).append(") (:domain courses)\n\t")
        .append("(:objects");

    objects.forEach(object -> problemDescription.append("\n\t\t").append(object));
    problemDescription.append("\n\t\t");

    int numberOfNames = random.nextInt(1, names.size() / 10 + 1); // Ensure at least one name
    for (int j = 0; j < numberOfNames; j++) {
      int randomIndex = random.nextInt(0, names.size()) / 10;
      String name = names.get(randomIndex).toLowerCase();

      if (!students.contains(name)) {
        problemDescription.append(name).append(" ");
        students.add(name);
      }
    }
    problemDescription.append("- student");
    problemDescription.append("\n\t)\n\n\t(:init");

    StringBuilder goal = new StringBuilder();
    goal.append("\n\t)\n\n\t(:goal");

    students.forEach(s -> problemDescription.append(courseGeneration(s, goal)));

    goal.append("\n\t)\n)");

    return problemDescription.append(goal).toString();
  }


  // Helper method to get a random element from a list
  private static <T> T getRandomElement(@NotNull List<T> list) {
    int index = (int) (Math.random() * list.size());
    return list.get(index);
  }

  // Helper method to add a PDDL predicate to the StringBuilder
  private static void addPredicate(@NotNull StringBuilder sb, String predicate, String @NotNull ... arguments) {
    sb.append("\n\t\t(").append(predicate);
    for (String arg : arguments) {
      sb.append(" ").append(arg);
    }
    sb.append(")");
  }
}
