abstract class AppPaddings {
  static const double tiny = 4.0;
  static const double small = 8.0;
  static const double medium = 12.0;
  static const double big = 16.0;
  static const double large = 24.0;
  static const double huge = 32.0;
}

abstract class AppRadiuses {
  static const double tiny = 6.0;
  static const double small = 8.0;
  static const double medium = 12.0;
  static const double big = 16.0;
  static const double large = 24.0;
  static const double huge = 36.0;
}

abstract class AppWidths {
  static const double small = 8;
  static const double medium = 12;
  static const double big = 18;
}

abstract class IconSizes {
  static double small = 16;
  static double medium = 22;
  static double big = 26;
}

abstract class DeadlinesConfig {
  static const double listMenuHeight = 156;
}

abstract class CalendarConfig {
  static const headerHeight = 40.0;
  static const dayCellHeight = 36.0;
  static const daysOfWeekHeight = 18.0;
  static const verticalPadding = 4.0;

  static double total({int weeksCount = 6}) =>
      headerHeight +
      daysOfWeekHeight +
      weeksCount * dayCellHeight +
      2 * verticalPadding +
      10;
}
