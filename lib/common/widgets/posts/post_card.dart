import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/common/widgets/custom_shapes/circular_container.dart';
import 'package:instagram_clone/features/media/controllers/image_controller.dart';
import 'package:get/get.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';

class LPostCard extends StatelessWidget {
  const LPostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = ImageController();
    return Column(
      children: [
        /// -- Header
        Container(
          color: Colors.black,
          height: 50,
          child: Row(
            children: [
              /// -- Circular Avatar
              const LCircularImage(image: LImages.postImage1),

              /// -- Name
              const Text('Jane Doe',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500)),
              const Spacer(),

              /// -- Action Button
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
                color: Colors.white,
              )
            ],
          ),
        ),

        /// -- Image
        SizedBox(
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.0,
              enlargeCenterPage: true,
              initialPage: 0,
              autoPlay: false,
              viewportFraction: 1,
              onPageChanged: (index, _) => controller.updateImageIndicator(index),
            ),
            items: const [
              Image(image: AssetImage(LImages.postImage1)),
              Image(image: AssetImage(LImages.postImage2)),
              Image(image: AssetImage(LImages.postImage3)),
            ],
          ),
        ),

        /// -- Actions
        SizedBox(
          height: 40,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      constraints: const BoxConstraints(),
                      style: const ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      constraints: const BoxConstraints(),
                      style: const ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      icon: const Icon(
                        Icons.comment_rounded,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      constraints: const BoxConstraints(),
                      style: const ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      icon: const Icon(
                        Icons.queue_play_next,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                child: Center(
                  child: Obx(
                    () => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        for (int i = 0; i < 3; i++)
                          LCircularContainer(
                            width: 5,
                            height: 5,
                            margin: const EdgeInsets.only(right: 5),
                            backgroundColor:
                                controller.imageCurrentIndex.value == i
                                    ? Colors.blue
                                    : Colors.grey,
                          )
                      ],
                    ),
                  ),
                ),
              ),

              /// -- Action Button
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.height),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
