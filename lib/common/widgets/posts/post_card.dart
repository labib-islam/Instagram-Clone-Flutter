import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';

class LPostCard extends StatelessWidget {
  const LPostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
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
        const Image(
          image: AssetImage(LImages.postImage1),
        ),

        /// -- Actions
        Container(
          color: Colors.black,
          height: 50,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                padding: const EdgeInsets.symmetric(horizontal: 5),
                constraints: const BoxConstraints(),
                style: const ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                icon: const Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                padding: const EdgeInsets.symmetric(horizontal: 5),
                constraints: const BoxConstraints(),
                style: const ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                icon: const Icon(
                  Icons.comment_rounded,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                padding: const EdgeInsets.symmetric(horizontal: 5),
                constraints: const BoxConstraints(),
                style: const ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                icon: const Icon(
                  Icons.queue_play_next,
                  color: Colors.white,
                ),
              ),
              const Spacer(),

              /// -- Action Button
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.height),
                color: Colors.white,
              )
            ],
          ),
        ),
      ],
    );
  }
}

