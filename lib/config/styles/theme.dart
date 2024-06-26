import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  // 亮色主题
  final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color.fromRGBO(95, 42, 255, 1),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    // 其他主题配置...
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white, // 设置背景颜色
        selectedItemColor: Color.fromRGBO(95, 42, 255, 1), // 设置选中项的颜色
        unselectedItemColor: Color.fromRGBO(177, 180, 195, 1), // 设置未选中项的颜色
        showUnselectedLabels: true, // 显示未选中项的标签
        showSelectedLabels: true,
        elevation: 0),
  );

  // 暗色主题
  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    // 其他主题配置...
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.blue, // 设置背景颜色
      selectedItemColor: Colors.red, // 设置选中项的颜色
      unselectedItemColor: Colors.white, // 设置未选中项的颜色
      showUnselectedLabels: true, // 显示未选中项的标签
    ),
  );

  // 当前主题
  Rx<ThemeData> currentTheme = Rx<ThemeData>(ThemeData());

  @override
  void onInit() {
    super.onInit();
    // 初始化当前主题为亮色主题
    currentTheme.value = lightTheme;
  }

  // 切换主题
  void toggleTheme() {
    currentTheme.value = Get.isDarkMode ? lightTheme : darkTheme;
  }
}
