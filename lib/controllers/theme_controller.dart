

import 'package:get/get.dart';

class ThemeController extends GetxController {
  
  bool _isDark = false;
  
  bool get isDark => _isDark;
  
  void toggleTheme() {
    _isDark = !isDark;
    update();

    print(_isDark);
  }
}