import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/constants/sizes.dart';

class LCircularImage extends StatelessWidget {
  const LCircularImage({
    super.key,
    this.width = 50,
    this.height = 50,
    this.padding = LSizes.sm,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.isFileImage = false,
  });

  final double width, height, padding;
  final BoxFit? fit;
  final dynamic image;
  final bool isNetworkImage;
  final bool isFileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: isNetworkImage
            ? CachedNetworkImage(
                fit: fit,
                imageUrl: image,
              )
            : isFileImage
                ? Image(fit: fit, image: FileImage(File(image)))
                : Image(
                    fit: fit,
                    image: AssetImage(image),
                  ),
      ),
    );
  }
}
