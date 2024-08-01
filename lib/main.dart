import 'package:calculator/src/ui/utility/app_exports.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (_) => const Calculator(),
    ),
    //  const Calculator(),
  );
}
