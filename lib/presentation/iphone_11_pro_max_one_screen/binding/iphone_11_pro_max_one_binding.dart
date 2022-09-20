import '../controller/iphone_11_pro_max_one_controller.dart';
import 'package:get/get.dart';

class Iphone11ProMaxOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone11ProMaxOneController());
  }
}
