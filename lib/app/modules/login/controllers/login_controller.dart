import 'package:examora/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TextEditingController emailC=TextEditingController();
  TextEditingController passwordC=TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Error state
  final emailError = RxnString();
  final passwordError = RxnString();

  // Loading state
  final isLoading = false.obs;


  Future<void> login() async {
    try {
      isLoading.value = true;

      await _auth.signInWithEmailAndPassword(
        email: emailC.text.trim(),
        password: passwordC.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Login Gagal",
        e.message ?? "Terjadi kesalahan",
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  void logout() async {
    await _auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
