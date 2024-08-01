import 'package:calculator/src/ui/utility/app_exports.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CalculatorDisplay(),
            SizedBox(height: SizeConfig.screenWidth! / 10),
            const CalculatorKeyboard(),
          ],
        ),
      ),
    );
  }
}
