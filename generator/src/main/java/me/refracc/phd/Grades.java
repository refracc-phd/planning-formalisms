package me.refracc.phd;

public enum Grades {
  A("a"),
  B("b"),
  C("c"),
  D("d"),
  P("p");

  private final String gradeValue;

  Grades(String gradeValue) {
    this.gradeValue = gradeValue;
  }

  public String getGradeValue() {
    return gradeValue;
  }
}