package me.refracc.phd;

public enum Course {
  ENGLISH("english"),
  ESOL("esol"),
  DRAMA("drama"),
  ART_DESIGN("art-design"),
  MUSIC("music"),
  MUSIC_TECH("music-tech"),
  DANCE("dance"),
  PHYS_ED("phys-ed"),
  HOME_ECONOMICS("home-economics"),
  TEXTILES("textiles"),
  MATHS("maths"),
  NUMERACY("numeracy"),
  LIFESKILLS("lifeskills"),
  FRENCH("french"),
  GERMAN("german"),
  SPANISH("spanish"),
  ITALIAN("italian"),
  LATIN("latin"),
  MANDARIN("mandarin"),
  CANTONESE("cantonese"),
  GAELIC("gaelic"),
  URDU("urdu"),
  BIOLOGY("biology"),
  CHEMISTRY("chemistry"),
  PHYSICS("physics"),
  LANDSCAPE_GARDENING("landscape-gardening"),
  GEOGRAPHY("geography"),
  HISTORY("history"),
  MODERN_STUDIES("modern-studies"),
  RMPS("rmps"),
  PHILOSOPHY("philosophy"),
  POLITICS("politics"),
  ADMIN_IT("admin-it"),
  BUSINESS_MANAGEMENT("business-management"),
  COMP_SCI("comp-sci"),
  DESIGN_MANUFACTURE("design-manufacture"),
  GRAPH_COMM("graph-comm"),
  PRACTICAL_WOODWORK("practical-woodwork"),
  PC_PASSPORT("pc-passport");

  private final String courseName;

  Course(String courseName) {
    this.courseName = courseName;
  }

  public String getCourseName() {
    return courseName;
  }
}

