import 'package:calculator/src/ui/utility/app_exports.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorKeyboard extends StatelessWidget {
  const CalculatorKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Column(
          children: [

            Row(
              children: [
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "AC",
                      buttonColor: AppColors.buttonColor,
                      buttonTextColor: AppColors.buttonTextColor,
                      buttonOnTap: calculatorController.allClear,
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "DELL",
                      buttonColor: AppColors.buttonColor,
                      buttonTextColor: AppColors.buttonTextColor,
                      buttonOnTap: calculatorController.deleteUserInput,
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "%",
                      buttonOnTap: () => calculatorController.appendInput('%'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "/",
                      buttonOnTap: () => calculatorController.appendInput('/'),
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "7",
                      buttonOnTap: () => calculatorController.appendInput('7'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "8",
                      buttonOnTap: () => calculatorController.appendInput('8'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "9",
                      buttonOnTap: () => calculatorController.appendInput('9'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "x",
                      buttonOnTap: () => calculatorController.appendInput('x'),
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "4",
                      buttonOnTap: () => calculatorController.appendInput('4'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "5",
                      buttonOnTap: () => calculatorController.appendInput('5'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "6",
                      buttonOnTap: () => calculatorController.appendInput('6'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "-",
                      buttonOnTap: () => calculatorController.appendInput('-'),
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "1",
                      buttonOnTap: () => calculatorController.appendInput('1'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "2",
                      buttonOnTap: () => calculatorController.appendInput('2'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "3",
                      buttonOnTap: () => calculatorController.appendInput('3'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "+",
                      buttonOnTap: () => calculatorController.appendInput('+'),
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "0",
                      buttonOnTap: () => calculatorController.appendInput('0'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: ".",
                      buttonOnTap: () => calculatorController.appendInput('.'),
                    );
                  },
                ),
                GetBuilder<CalculatorController>(
                  builder: (calculatorController) {
                    return CalculatorButton(
                      buttonTitle: "=",
                      flex: 2,
                      buttonOnTap: () => calculatorController.onTapEqualButton(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
