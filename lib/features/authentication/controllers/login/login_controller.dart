import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/repositories/authentication_repository.dart';
import '../../../../utils/helpers/network_manager.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final isLoading = false.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  Future<void> login() async {
    try {
      isLoading.value = true;

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        print('Connection Error');
        return;
      }

      if(!loginFormKey.currentState!.validate()) {
        return;
      }

      final userCredential = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      isLoading.value = false;

      AuthenticationRepository.instance.screenRedirect();

    } catch (e) {
      print(e.toString());
    } finally {
      isLoading.value = false;
    }
  }

}