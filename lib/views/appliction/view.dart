import 'package:community/views/appliction/index.dart';
import 'package:community/views/community/index.dart';
import 'package:community/views/home/index.dart';
import 'package:community/views/message/index.dart';
import 'package:community/views/personal/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ApplictionPage extends GetView<ApplictionController> {
  const ApplictionPage({super.key});
  @override
  Widget build(BuildContext context) {
    Widget buildPageView() {
      return PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        onPageChanged: controller.handlePageChanged,
        children: const [
          HomePage(),
          CommunityPage(),
          Center(),
          MessagePage(),
          PersonalPage(),
        ],
      );
    }

    Widget buildBottomNavigationBar() {
      return Obx(
        () => Stack(
          alignment: Alignment.center,
          children: [
            BottomNavigationBar(
              items: controller.bottomTabs,
              currentIndex: controller.state.page,
              type: BottomNavigationBarType.fixed,
              onTap: controller.handleNavBarTap,
            ),
            Positioned(
              // bottom: 40.h, // 底部边距
              top: 6,
              child: GestureDetector(
                onTap: () {
                  // 处理添加按钮点击事件
                  Get.toNamed('/home');
                },
                child: Container(
                  width: 36.w,
                  height: 36.w,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(95, 42, 255, 1),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 1),
                        color: Color(0xFFFFB128),
                      ),
                      BoxShadow(
                        offset: Offset(-1, -1),
                        color: Color(0xFF28DEFF),
                      ),
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 8,
                        color: Color.fromRGBO(95, 42, 255, 0.2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}
