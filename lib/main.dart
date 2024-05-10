import 'package:community/config/router/routes.dart';
import 'package:community/config/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, child) => GetMaterialApp(
              title: 'community',
              debugShowCheckedModeBanner: false,
              theme: themeController.currentTheme.value,
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            ));
  }
}
