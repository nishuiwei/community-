import 'package:community/views/message/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MessageController extends GetxController {
  MessageController();
  String title(BuildContext context) {
    return AppLocalizations.of(context)!.messages_app_bar_title;
  }

  final state = MessageState();

  @override
  void onReady() {
    super.onReady();
    // 延迟三秒后打印字符串
    Future.delayed(const Duration(seconds: 3), () {
      print('Message');
    });
  }
}
