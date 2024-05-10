import 'package:community/views/appliction/index.dart';
import 'package:community/views/home/index.dart';
import 'package:get/get.dart';

class ApplictionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplictionController>(() => ApplictionController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
