import 'package:community/views/home/index.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController();
  final title = "Home";
  final state = HomeState();

  @override
  void onReady() {
    super.onReady();

    // 延迟三秒后打印字符串
    Future.delayed(const Duration(seconds: 3), () {
      print('Home');
    });
  }
}
