package me.refracc.phd;

public enum SupportRequirement {
  ASC_ASD("asc-asd"),
  SOCIAL_OTHER("social-other"),
  TOURETTES("tourettes"),
  DEAF_HEARING("deaf-hearing"),
  BLIND_VISUAL("blind-visual"),
  LANGUAGE("language");

  private final String value;

  SupportRequirement(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }
}

