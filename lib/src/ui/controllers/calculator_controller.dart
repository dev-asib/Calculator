import 'package:calculator/src/ui/utility/app_exports.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  String _userInput = '';
  String _result = '';

  String get inputs => _userInput;

  String get result => _result;

  set userInput(String userInput) {
    _userInput = userInput;
    update();
  }

  set answer(String answer) {
    _result = answer;
    update();
  }

  void appendInput(String value) {
    if (_userInput.isEmpty && (isOperator(value) || value == '0')) {
      return;
    }

    if (_userInput.isNotEmpty &&
        isOperator(value) &&
        isOperator(_userInput[_userInput.length - 1])) {
      return;
    }

    _userInput += value;
    update();
  }

  bool isOperator(String value) {
    return  value == '+' ||
            value == '-' ||
            value == 'x' ||
            value == '/' ||
            value == '%';
  }

  void allClear() {
    _userInput = '';
    _result = '';

    update();
  }

  void deleteUserInput() {
    if (_userInput.isNotEmpty) {
      _userInput = _userInput.substring(0, _userInput.length - 1);
    }

    update();
  }

  void onTapEqualButton() {
    try {
      String finalUserInput = _userInput.replaceAll('x', "*");

      Parser parser = Parser();

      Expression expression = parser.parse(finalUserInput);

      ContextModel contextModel = ContextModel();

      double evaluate = expression.evaluate(EvaluationType.REAL, contextModel);

      _result = evaluate.toString();
    } catch (e) {
      answer = 0.toString();
    }

    update();
  }
}
