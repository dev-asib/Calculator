import 'package:calculator/src/ui/utility/app_exports.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () => Get.offAndToNamed(AppPages.calculatorView),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                AssetsPaths.splashLotty,
                height: SizeConfig.screenWidth! / 1.5,
                width: SizeConfig.screenWidth! / 1.5,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Loading....",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
