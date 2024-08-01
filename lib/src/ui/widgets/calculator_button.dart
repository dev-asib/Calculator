import 'package:calculator/src/ui/utility/app_exports.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.buttonTitle,
    this.buttonColor = AppColors.defaultButtonColor,
    this.buttonTextColor = AppColors.defaultButtonTextColor,
    required this.buttonOnTap,
    this.flex = 1,
  });

  final String buttonTitle;
  final Color buttonColor;
  final Color buttonTextColor;
  final VoidCallback buttonOnTap;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: InkWell(
        onTap: buttonOnTap,
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.screenWidth! / 50),
          child: Container(
            height: SizeConfig.screenWidth! / 7,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                buttonTitle,
                style: TextStyle(
                  color: buttonTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
