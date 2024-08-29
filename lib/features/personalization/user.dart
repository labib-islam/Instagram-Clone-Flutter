import 'package:flutter/material.dart';
import 'package:instagram_clone/common/widgets/images/circular_image.dart';
import 'package:instagram_clone/data/repositories/authentication_repository.dart';
import 'package:instagram_clone/features/personalization/controllers/user_controller.dart';
import 'package:instagram_clone/utils/constants/sizes.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    print(controller.user.value.imageUrl);
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.all(LSizes.defaultSpace),
        child: Column(
          children: [
            const SizedBox(height: LSizes.spaceBtwSections * 2),
            LCircularImage(image: controller.user.value.imageUrl, isNetworkImage: true,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => AuthenticationRepository.instance.logout(),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.white,

                ),
                child: const Text('Logout'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
