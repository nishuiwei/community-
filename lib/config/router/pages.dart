import 'package:community/views/community/index.dart';
import 'package:community/views/appliction/index.dart';
import 'package:community/views/home/index.dart';
import 'package:community/views/message/index.dart';
import 'package:community/views/personal/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];
  static final List<GetPage> routes = [
    // 底部导航页面
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const ApplictionPage(),
      // binding 绑定改页面组件 可以为是控制器
      binding: ApplictionBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      // binding 绑定改页面组件 可以为是控制器
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.COMMUNITY,
      page: () => const CommunityPage(),
      // binding 绑定改页面组件 可以为是控制器
      binding: CommunityBinding(),
    ),
    GetPage(
      name: AppRoutes.MESSAGE,
      page: () => const MessagePage(),
      // binding 绑定改页面组件 可以为是控制器
      binding: MessageBinding(),
    ),
    GetPage(
      name: AppRoutes.PERSONAL,
      page: () => const PersonalPage(),
      // binding 绑定改页面组件 可以为是控制器
      binding: PersonalBinding(),
    ),
  ];
}
