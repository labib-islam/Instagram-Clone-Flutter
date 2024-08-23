import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/common/widgets/custom_shapes/circular_container.dart';
import 'package:instagram_clone/features/media/controllers/image_controller.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/features/media/screens/comment/comment_page.dart';
import 'package:instagram_clone/features/media/screens/reel/reel.dart';
import 'package:instagram_clone/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';
import 'comment_box.dart';

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
              /// Circular Avatar
              const LCircularImage(image: LImages.postImage1),

              /// Name
              const Text('Jane Doe',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500)),
              const Spacer(),

              /// Action Button
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
              onPageChanged: (index, _) =>
                  controller.updateImageIndicator(index),
            ),
            items: const [
              Image(image: AssetImage(LImages.postImage1)),
              Image(image: AssetImage(LImages.postImage2)),
              Image(image: AssetImage(LImages.postImage3)),
            ],
          ),
        ),

        /// -- Footer

        /// Actions
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

        /// Number of Likes
        const SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              '0 likes',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: LSizes.sm / 2),

        /// Caption
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Jane Doe ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  WidgetSpan(
                    child: ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimMode: TrimMode.Line,
                      trimLines: 1,
                      colorClickableText: Colors.white,
                      style: TextStyle(color: Colors.white),
                      trimCollapsedText: 'more',
                      trimExpandedText: 'less',
                      moreStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      lessStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: LSizes.sm / 2),

        GestureDetector(
          onTap: () => Get.to(() => const LCommentPage()),
          child: const SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'View all comments',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
