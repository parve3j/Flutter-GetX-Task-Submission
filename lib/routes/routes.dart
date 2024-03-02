import 'package:get/get.dart';
import 'package:task/bindings/password_binding.dart';
import 'package:task/bindings/select_binding.dart';
import 'package:task/ui/views/task2.dart';
import 'package:task/ui/views/task_1.dart';

const String task1='/task1';
const String task2='/task2';
List<GetPage> getPage = [
  GetPage(
    name: task1,
    page: ()=>TaskOne(),
    binding: PasswordBinding()
  ),
  GetPage(
    name: task2,
    page: ()=>TaskTwo(),
    binding: SelectBinding()
  ),
];
