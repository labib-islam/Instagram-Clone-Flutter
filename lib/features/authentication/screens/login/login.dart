import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram_clone/features/authentication/screens/signup/signup.dart';
import 'package:instagram_clone/navigation_menu.dart';
import 'package:instagram_clone/utils/constants/image_strings.dart';
import 'package:instagram_clone/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                child: Column(
                  children: [
                    /// Login Form
                    Column(
                      children: [
                        /// -- Email, UserName
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Phone number, username or email address',
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),
              
                        /// -- Password
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Password',
                              suffixIcon: Icon(Iconsax.eye_slash)
                          ),
                        ),
                        const SizedBox(height: LSizes.spaceBtwItems),
              
                        /// -- Forget Password
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Forgotten password?', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),),
                          ],
                        ),
                        const SizedBox(height: LSizes.spaceBtwSections),
              
                        /// -- Login Button
                        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text('Log In'))),
              
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
                    const Text("Don't have an account?", style: TextStyle(color: Colors.grey),),
                    TextButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text('Sign up', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))
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
