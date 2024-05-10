import 'package:community/views/personal/index.dart';
import 'package:get/get.dart';

class PersonalController extends GetxController {
  PersonalController();
  final title = "personal";
  final state = PersonalState();

  @override
  void onReady() {
    super.onReady();
    // 延迟三秒后打印字符串
    Future.delayed(const Duration(seconds: 3), () {
      print('Personal');
    });
  }
}
