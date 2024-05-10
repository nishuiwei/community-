import 'package:community/views/message/index.dart';
import 'package:get/get.dart';

class MessageController extends GetxController {
  MessageController();
  final title = "message";
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
