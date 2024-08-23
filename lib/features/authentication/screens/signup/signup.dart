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
          color: Colors.black
        ),
        child: Row(
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
                child: Column(
                  children: [
                    /// Signup Form
                    Column(
                      children: [
                        /// -- Image
                        const Stack(
                          children: [
                            LCircularImage(
                                width: 120,
                                height: 120,
                                image: LImages.profileImage),
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
                        const SizedBox(height: LSizes.spaceBtwSections),
          
                        /// -- Signup Button
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () =>
                                    Get.to(() => const NavigationMenu()),
                                child: const Text('Signup'))),
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
