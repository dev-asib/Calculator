import 'package:calculator/src/ui/utility/app_exports.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      initialBinding: CalculatorBindings(),
      initialRoute: AppPages.splashView,
      getPages: AppRoutes.getPages,
      theme: AppThemes.lightThemeData(),
      darkTheme: AppThemes.darkThemeData(),
      themeMode: ThemeMode.system,
    );
  }
}
