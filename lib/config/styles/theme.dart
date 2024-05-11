import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  // 亮色主题
  final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        titleTextStyle: TextStyle(
            fontSize: 18,
            color: Color(0xff0B1526),
            fontWeight: FontWeight.w600),
        actionsIconTheme: IconThemeData(color: Color(0xff0B1526), size: 22)),
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
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    // 其他主题配置...
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.grey, // 设置背景颜色
      showUnselectedLabels: true, // 显示未选中项的标签
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      scrolledUnderElevation: 0.0,
      titleTextStyle: TextStyle(
          fontSize: 18, color: Color(0xffffffff), fontWeight: FontWeight.w600),
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
