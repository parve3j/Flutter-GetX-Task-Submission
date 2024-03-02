import 'package:get/get.dart';
import 'package:task/controllers/obsecuretext_controller.dart';

class PasswordController extends GetxController{
  final passwordController = ObscuringTextEditingController();
  RxString pass=''.obs;
}