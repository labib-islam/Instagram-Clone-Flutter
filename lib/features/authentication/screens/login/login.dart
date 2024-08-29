import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram_clone/features/authentication/controllers/login/login_controller.dart';
import 'package:instagram_clone/features/authentication/screens/signup/signup.dart';
import 'package:instagram_clone/utils/constants/image_strings.dart';
import 'package:instagram_clone/utils/constants/sizes.dart';
import 'package:instagram_clone/utils/validators/validation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
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
              "Don't have an account?",
              style: TextStyle(color: Colors.grey),
            ),
            TextButton(
                onPressed: () => Get.offAll(() => const SignupScreen()),
                child: const Text(
                  'Signup',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(LSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// -- App Logo
            const Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 180.0,
                  child: Image(
                    image: AssetImage(LImages.darkAppLogo),
                  ),
                ),
              ),
            ),
            const SizedBox(height: LSizes.spaceBtwSections),

            /// -- Login Form
            Expanded(
              flex: 3,
              child: Form(
                key: controller.loginFormKey,
                child: Column(
                  children: [
                    /// Login Form
                    Column(
                      children: [
                        /// -- Email, UserName
                        TextFormField(
                          controller: controller.email,
                          validator: (value) => LValidator.validateEmail(value),
                          decoration: const InputDecoration(
                            labelText:
                                'Phone number, username or email address',
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),

                        /// -- Password
                        Obx(
                          () => TextFormField(
                            controller: controller.password,
                            validator: (value) =>
                                LValidator.validatePassword(value),
                            obscureText: controller.hidePassword.value,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                suffixIcon: IconButton(
                                    onPressed: () => controller.hidePassword
                                        .value = !controller.hidePassword.value,
                                    icon: Icon(controller.hidePassword.value
                                        ? Iconsax.eye_slash
                                        : Iconsax.eye))),
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),

                        /// -- Forget Password
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forgotten password?',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(height: LSizes.spaceBtwSections),

                        /// -- Login Button
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () => controller.login(),
                                child: controller.isLoading.value ? const CircularProgressIndicator(color: Colors.white,) : const Text('Log In'))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
