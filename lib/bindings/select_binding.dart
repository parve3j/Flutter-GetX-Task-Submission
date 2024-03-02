import 'package:get/get.dart';
import 'package:task/controllers/select_controller.dart';

class SelectBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SelectController());
  }

}