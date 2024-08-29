import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram_clone/features/personalization/controllers/user_controller.dart';
import 'package:instagram_clone/utils/constants/image_strings.dart';
import 'package:instagram_clone/utils/constants/sizes.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/posts/post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {},
          child: const SizedBox(
            width: 170,
            height: 28,
            child: Row(
              children: [
                Image(image: AssetImage(LImages.darkAppLogo)),
                SizedBox(width: LSizes.spaceBtwItems * 1.5),
                Icon(
                  Iconsax.arrow_down5,
                  size: 30,
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.heart4)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.messenger_outline)),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => const LPostCard(),
        itemCount: 5,
      ),
    );
  }
}


