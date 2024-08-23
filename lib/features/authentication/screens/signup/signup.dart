import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram_clone/common/widgets/icons/l_circular_icon.dart';
import 'package:instagram_clone/common/widgets/images/circular_image.dart';
import 'package:instagram_clone/features/authentication/screens/login/login.dart';

import '../../../../navigation_menu.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(LSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// -- App Logo
            const Expanded(
              flex: 1,
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
                child: Column(
                  children: [
                    /// Login Form
                    Column(
                      children: [
                        /// -- Image
                        const Stack(
                          children: [
                            LCircularImage(
                                width: 120,
                                height: 120,
                                image: LImages.postImage1),
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: LCircularIcon(
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
                          decoration: const InputDecoration(
                            labelText: 'Name',
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),

                        /// -- Username
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Username',
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),

                        /// -- Email
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email Address',
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),

                        /// -- Password
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Password',
                              suffixIcon: Icon(Iconsax.eye_slash)),
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
                                onPressed: () =>
                                    Get.to(() => const NavigationMenu()),
                                child: const Text('Log In'))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: LSizes.spaceBtwSections),

            /// Sign up Form Button
            Column(
              children: [
                const Divider(
                  thickness: 0.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () => Get.to(() => const LoginScreen()),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
