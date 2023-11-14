package me.refracc.phd;

public enum Level {
  YEAR_ONE("year-one"),
  YEAR_TWO("year-two"),
  YEAR_THREE("year-three"),
  NATIONAL_FOUR("national-four"),
  NATIONAL_FIVE("national-five"),
  HIGHER("higher"),
  ADV_HIGHER("adv-higher");

  private final String levelDescription;

  Level(String levelDescription) {
    this.levelDescription = levelDescription;
  }

  public String getLevelDescription() {
    return levelDescription;
  }
}


