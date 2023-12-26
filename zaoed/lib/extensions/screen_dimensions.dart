import 'package:zaoed/constants/imports.dart';

extension ScreenExtension on BuildContext {
  double getWidth({double divide = 1}) {
    return MediaQuery.of(this).size.width / divide;
  }

  double getHeight({double divide = 1}) {
    return MediaQuery.of(this).size.height / divide;
  }
}
