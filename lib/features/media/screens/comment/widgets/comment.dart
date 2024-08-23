import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/circular_image.dart';
import '../../../../../utils/constants/image_strings.dart';

class LComment extends StatelessWidget {
  const LComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LCircularImage(image: LImages.postImage1),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Doe',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              Text(
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                  color: Colors.white,
                ),
                softWrap: true,
              )
            ],
          ),
        )
      ],
    );
  }
}