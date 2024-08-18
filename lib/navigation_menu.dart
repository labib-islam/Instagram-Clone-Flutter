import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram_clone/features/media/screens/home/home.dart';
import 'package:instagram_clone/features/media/screens/post/post.dart';
import 'package:instagram_clone/features/media/screens/reel/reel.dart';
import 'package:instagram_clone/features/media/screens/search/search.dart';
import 'package:instagram_clone/features/personalization/user.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 50,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          backgroundColor: Colors.black,
          indicatorColor: Colors.grey,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home,color: Colors.white), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.search,color: Colors.white), label: 'Search'),
            NavigationDestination(icon: Icon(Iconsax.element_plus,color: Colors.white), label: 'Search'),
            NavigationDestination(icon: Icon(Iconsax.video,color: Colors.white), label: 'Search'),
            NavigationDestination(icon: Icon(Iconsax.user,color: Colors.white), label: 'Search'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const PostScreen(),
    const ReelScreen(),
    const UserScreen(),
  ];

}