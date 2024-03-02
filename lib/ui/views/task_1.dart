import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controllers/obsecuretext_controller.dart';
import 'package:task/controllers/password_controller.dart';
import 'package:task/routes/routes.dart';
import 'package:task/ui/widgets/custom_button.dart';
import 'package:task/ui/widgets/textfield_widget.dart';


class TaskOne extends StatelessWidget {
   TaskOne({super.key});
   PasswordController controller = PasswordController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customTextfield(
              TextInputType.text,
              controller.passwordController,
              'Password',
              Icons.remove_red_eye_outlined,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customButton(
                    'Check Password',
                        () {
                      controller.pass.value = controller.passwordController.text;
                      controller.passwordController.clear();
                    },
                    context,
                  ),
                  SizedBox(height: 30),
                  customButton(
                    'Go to Task 2',
                        () {
                      Get.offAllNamed(task2);
                    },
                    context,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Obx(() => Text(
                'Password is: ${controller.pass.value}',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
