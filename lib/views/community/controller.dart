import 'package:community/views/community/index.dart';
import 'package:get/get.dart';

class CommunityController extends GetxController {
  CommunityController();
  final title = "community";
  final state = CommunityState();

  @override
  void onReady() {
    super.onReady();
    // 延迟三秒后打印字符串
    Future.delayed(const Duration(seconds: 3), () {
      print('Community');
    });
  }
}
