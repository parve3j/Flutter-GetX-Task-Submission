import 'package:get/get.dart';
import 'package:task/controllers/password_controller.dart';

class PasswordBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(PasswordController());
  }

}