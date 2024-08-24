
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/data/repositories/authentication_repository.dart';
import 'package:instagram_clone/data/repositories/user_repository.dart';

import '../../../../utils/helpers/network_manager.dart';
import '../../models/user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final name = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  Rx<XFile>? selectedImage = Rx<XFile>(XFile(""));
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        print('Connection Error');
        return;
      }

      if(!signupFormKey.currentState!.validate()) {
        return;
      }


      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      final userRepository = Get.put(UserRepository());
      final imageUrl = await userRepository.uploadImage('Users/images/profile', selectedImage!.value);

      final newUser = UserModel(
        id: userCredential.user!.uid,
        name: name.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        imageUrl: imageUrl,
      );

      await userRepository.saveUserRecord(newUser);

      print(newUser.toJson());
    } catch (e) {
      print(e.toString());
    }
  }

  pickProfilePicture() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 70, maxHeight: 512, maxWidth: 512);

      if (image != null) {
        selectedImage?.value = image;
      }
    } catch (e) {
      print(e.toString());
    }
  }

}