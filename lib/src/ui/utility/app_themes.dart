import 'package:calculator/src/ui/utility/app_exports.dart';

class AppThemes {

  static ThemeData lightThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.appBackgroundColor,
      textTheme: textTheme(),
    );
  }

  static ThemeData darkThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.appBackgroundColor,
      textTheme: textTheme(),
    );
  }

  static TextTheme textTheme() {
    return const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }

}
