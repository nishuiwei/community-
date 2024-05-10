import 'package:community/views/personal/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalPage extends GetView<PersonalController> {
  const PersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 设置导航栏标题
        title: Text(controller.title),

        // 设置导航栏背景颜色
      ),
      body: const SafeArea(child: Text('123')),
    );
  }
}
