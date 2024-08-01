import 'package:calculator/src/ui/utility/app_exports.dart';

class CalculatorBindings extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => CalculatorController());
  }

}
