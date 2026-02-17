import 'package:examora/app/components/my_button.dart';
import 'package:examora/app/components/my_text_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.school,
                size: 80,
                color: Theme.of(context).colorScheme.primary,
              ),

               SizedBox(height: 20),
            MyTextField(hintText: "Email", controller: controller.emailC),
            SizedBox(height: 15),
            MyTextField(
              hintText: "Password",
              controller: controller.passwordC,
              obscureText: true,
            ),
            SizedBox(height: 15),
            MyButton(text: "Login", onTap: () {}),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: Text("register", style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}
