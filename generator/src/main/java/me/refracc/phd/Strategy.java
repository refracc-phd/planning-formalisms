package me.refracc.phd;

public enum Strategy {
  VISUALISATION("visualisation"),
  TEAMWORK("teamwork"),
  STUDENT_LED_CLASS("student-led-class"),
  INQUIRY_BASED_TEACHING("inquiry-based-teaching"),
  TECHNOLOGICAL_TOOLS("technological-tools"),
  FLEX_SEATING("flex-seating"),
  GAMIFICATION("gamification"),
  PROJECT_BASED("project-based"),
  BLENDED_LEARNING("blended-learning"),
  INTERDISCIPLINARY_TEACHING("interdisc-teaching");

  private final String value;

  Strategy(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }
}
