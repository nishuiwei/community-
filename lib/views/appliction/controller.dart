import 'package:community/config/icons/svg.dart';
import 'package:community/views/appliction/index.dart';
import 'package:community/views/community/index.dart';
import 'package:community/views/home/index.dart';
import 'package:community/views/message/index.dart';
import 'package:community/views/personal/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ApplictionController extends GetxController {
  final state = ApplictionState();
  ApplictionController();

  late final List<String> tabTitles;
  late final PageController pageController;
  late final List<BottomNavigationBarItem> bottomTabs;

  void handlePageChanged(int index) {
    state.page = index;
  }

  void handleNavBarTap(int index) {
    if (index == 2) return;
    pageController.jumpToPage(index);
    switch (index) {
      case 0:
        Get.lazyPut<HomeController>(() => HomeController());
        break;
      case 1:
        Get.lazyPut<CommunityController>(() => CommunityController());
        break;
      case 3:
        Get.lazyPut<MessageController>(() => MessageController());
      case 4:
        Get.lazyPut<PersonalController>(() => PersonalController());
        break;
      default:
        Get.lazyPut<HomeController>(() => HomeController());
    }
  }

  @override
  void onInit() {
    super.onInit();
    tabTitles = ['home', 'community', 'message', 'personal'];
    bottomTabs = <BottomNavigationBarItem>[
      buildNavigation(SvgIcon.HOME, SvgIcon.ACTIVE_HOME, '首页'),
      buildNavigation(SvgIcon.COMMUNITY, SvgIcon.ACTIVE_COMMUNITY, '社区'),
      buildNavigation('', '', ''),
      buildNavigation(SvgIcon.MESSAGE, SvgIcon.ACTIVE_MESSAGE, '消息'),
      buildNavigation(SvgIcon.PERSONAL, SvgIcon.ACTIVE_PERSONAL, '个人'),
    ];
    pageController = PageController(initialPage: state.page);
  }

  BottomNavigationBarItem buildNavigation(
      String icon, String active, String label) {
    return icon != ''
        ? BottomNavigationBarItem(
            icon: SvgPicture.asset(icon),
            activeIcon: SvgPicture.asset(
              active,
            ),
            label: label)
        : BottomNavigationBarItem(icon: const Icon(Icons.add), label: label);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
