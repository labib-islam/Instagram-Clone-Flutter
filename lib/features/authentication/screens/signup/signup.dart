import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram_clone/common/widgets/icons/l_circular_icon.dart';
import 'package:instagram_clone/common/widgets/images/circular_image.dart';
import 'package:instagram_clone/features/authentication/controllers/signup/signup_controller.dart';
import 'package:instagram_clone/features/authentication/screens/login/login.dart';
import 'package:instagram_clone/utils/validators/validation.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    return Scaffold(
      bottomSheet: Container(
        width: double.infinity,
        height: 60,
        decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: .7,
              ),
            ),
            color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an account?",
              style: TextStyle(color: Colors.grey),
            ),
            TextButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(LSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: LSizes.spaceBtwSections * 3),

              /// -- App Logo
              const SizedBox(
                width: 180.0,
                child: Image(
                  image: AssetImage(LImages.darkAppLogo),
                ),
              ),
              const SizedBox(height: LSizes.spaceBtwSections),

              /// -- Signup Form
              Form(
                key: controller.signupFormKey,
                child: Column(
                  children: [
                    /// Signup Form
                    Column(
                      children: [
                        /// -- Image
                        Stack(
                          children: [
                            Obx(
                              () => LCircularImage(
                                    width: 120,
                                    height: 120,
                                    isFileImage: controller.selectedImage!.value.path.isNotEmpty ? true : false,
                                    image: controller.selectedImage!.value.path.isNotEmpty ? controller.selectedImage!.value.path : LImages.profileImage ),
                            ),

                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: LCircularIcon(
                                onPressed: () => controller.pickProfilePicture(),
                                icon: Icons.add,
                                width: 30,
                                height: 30,
                                size: 20,
                                backgroundColor: Colors.blue,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),

                        /// -- Name
                        TextFormField(
                          controller: controller.name,
                          validator: (value) => LValidator.validateEmptyText('Name', value),
                          decoration: const InputDecoration(
                            labelText: 'Name',
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),

                        /// -- Username
                        TextFormField(
                          controller: controller.username,
                          validator: (value) => LValidator.validateEmptyText('Username', value),
                          decoration: const InputDecoration(
                            labelText: 'Username',
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),

                        /// -- Email
                        TextFormField(
                          controller: controller.email,
                          validator: (value) => LValidator.validateEmail(value),
                          decoration: const InputDecoration(
                            labelText: 'Email Address',
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),

                        /// -- Password
                        Obx(
                          () => TextFormField(
                            controller: controller.password,
                            validator: (value) => LValidator.validatePassword(value),
                            obscureText: controller.hidePassword.value,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                suffixIcon: IconButton(
                                    onPressed: () => controller.hidePassword
                                        .value = !controller.hidePassword.value,
                                    icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye))),
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwSections),

                        /// -- Signup Button
                        Obx(
                            () => SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () => controller.signup(),
                                  child: controller.isLoading.value ? const CircularProgressIndicator(color: Colors.white,) : const Text('Signup'))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: LSizes.spaceBtwSections * 2),
            ],
          ),
        ),
      ),
    );
  }
}
