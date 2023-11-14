package me.refracc.phd;

import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class Generator {
  private static final Executor executor = Executors.newFixedThreadPool(3); // Adjust the pool size based on your needs

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
    CompletableFuture<List<String>> constantsFuture = readAsync("constants.txt");
    CompletableFuture<List<String>> namesFuture = readAsync("names.txt");
    CompletableFuture<List<String>> objectsFuture = readAsync("objects.txt");

    // Use join() to wait for the completion of all futures
    List<String> constants = constantsFuture.join();
    List<String> names = namesFuture.join();
    List<String> objects = objectsFuture.join();

    Random rand = new Random();

    for (int i = 0; i < 100; i++) {
      String problem = "p" + i + ".pddl";

      System.out.println(generateProblem(i, objects, names, rand));
    }
  }

  @Contract(pure = true)
  private static @NotNull String generateProblem(int problemIndex, @NotNull List<String> objects, List<String> names, Random random) {
    StringBuilder problemDescription = new StringBuilder();
    Set<String> usedNames = new HashSet<>();

    problemDescription.append("(define (problem p").append(problemIndex).append(") (:domain courses)\n\t")
        .append("(:objects");

    for (String object : objects) {
      problemDescription.append("\n\t\t").append(object);
    }
    problemDescription.append("\n\t\t");

    int numberOfNames = random.nextInt(1, names.size() / 10 + 1); // Ensure at least one name
    for (int j = 0; j < numberOfNames; j++) {
      int randomIndex = random.nextInt(0, names.size()) / 10;
      String name = names.get(randomIndex).toLowerCase();

      if (!usedNames.contains(name)) {
        problemDescription.append(name).append(" ");
        usedNames.add(name);
      }
    }
    problemDescription.append("- student");
    problemDescription.append("\n\t)\n\n\t(:init\n\t\t");

    return problemDescription.toString();
  }

}
