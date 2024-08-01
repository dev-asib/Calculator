import 'package:calculator/src/ui/utility/app_exports.dart';

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.screenWidth! / 50,
          right: SizeConfig.screenWidth! / 50,
          top: SizeConfig.screenWidth! / 50,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.calculatorDisplayColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth! / 30,
              vertical: SizeConfig.screenWidth! / 30,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GetBuilder<CalculatorController>(
                    builder: (calculatorController) {
                      return Expanded(
                        child: SizedBox(
                          child: SingleChildScrollView(
                            reverse: true,
                            child: Column(
                              children: [
                                Text(
                                  calculatorController.inputs,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: SizeConfig.screenWidth! / 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: SizeConfig.screenWidth! / 90,
                  ),
                  GetBuilder<CalculatorController>(
                    builder: (calculatorController) {
                      return Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        calculatorController.result,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig.screenWidth! / 12,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
