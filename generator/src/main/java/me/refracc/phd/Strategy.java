package me.refracc.phd;

public enum Strategy {
  TEAMWORK("teamwork"),
  STUDENT_LED_CLASS("student-led-class"),
  TECHNOLOGICAL_TOOLS("technological-tools"),
  FLEX_SEATING("flex-seating"),
  GAMIFICATION("gamification"),
  PROJECT_BASED("project-based"),
  BLENDED_LEARNING("blended-learning");

  private final String value;

  Strategy(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }
}
