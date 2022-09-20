import '/core/app_export.dart';
import 'package:dark_s_application4/presentation/iphone_11_pro_max_one_screen/models/iphone_11_pro_max_one_model.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxOneController extends GetxController {
  TextEditingController groupNineController = TextEditingController();

  TextEditingController groupEightController = TextEditingController();

  Rx<Iphone11ProMaxOneModel> iphone11ProMaxOneModelObj =
      Iphone11ProMaxOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupNineController.dispose();
    groupEightController.dispose();
  }
}
