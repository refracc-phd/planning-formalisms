package me.refracc.phd;

import org.jetbrains.annotations.NotNull;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Generator {

  private static final Executor executor = Executors.newFixedThreadPool(3); // Adjust the pool size based on your needs
  private static final List<String> students = new ArrayList<>();

  private static @NotNull CompletableFuture<List<String>> readAsync(String name) {
    return CompletableFuture.supplyAsync(() -> read(name), executor);
  }

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

  public static void main(String[] args) {
    List<String> constants = readAsync("constants.txt").join();
    List<String> names = readAsync("names.txt").join();
    List<String> objects = readAsync("objects.txt").join();

    Random random = new Random(1L);

    for (int i = 0; i < 5; i++) {
      System.out.println(generateProblem(i, objects, names, random));
    }

  }

  private static @NotNull String courseGeneration(String student) {
    Map<String, Map<Course, Level>> allocation = new HashMap<>();
    List<Course> courses = List.of(Course.values());
    List<Level> levels = List.of(Level.values());

    // Ensure the student has no more than 6 courses
    for (int i = 0; i < 6; i++) {
      // Randomly select a course and level for the student
      Course randomCourse = getRandomElement(courses);
      Level randomLevel = getRandomElement(levels);

      // Check if the student already has the selected course
      allocation.computeIfAbsent(student, k -> new HashMap<>())
          .putIfAbsent(randomCourse, randomLevel);
    }

    // Build the StringBuilder with the student-course-level allocations
    StringBuilder pddlProblem = new StringBuilder();
    allocation.forEach((stu, courseLevels) ->
        courseLevels.forEach((course, level) ->
            addPredicate(pddlProblem, "takes-course", stu, course.getCourseName(), level.getLevelDescription())));

    return pddlProblem.toString();
  }

  private static @NotNull String generateProblem(int problemIndex, @NotNull List<String> objects, @NotNull List<String> names, @NotNull Random random) {
    students.clear();
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

    for (String s : students)
      problemDescription.append(courseGeneration(s));

    return problemDescription.toString();
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
