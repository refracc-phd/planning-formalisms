package me.refracc.phd;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Objects;

public class Generator {

  public static void main(String[] args) {
    Generator gen = new Generator();

    for (int i = 0; i < 100; i++) {
      String problem = "p" + i + ".pddl";

      try (BufferedReader br = new BufferedReader(new InputStreamReader(Objects.requireNonNull(gen.getClass().getResourceAsStream("constants.txt"))))){
      } catch (IOException e) {
        throw new RuntimeException(e);
      }
    }
  }

  private static String problem(int i) {
    return "(define (problem " + "p" + i + ") (:domain courses)";
  }
}
