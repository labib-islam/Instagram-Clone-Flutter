import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';


class LCircularIcon extends StatelessWidget {
  const LCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = LSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor
      ),
      child: Center(
        child: GestureDetector(
          onTap: onPressed,
          child: Icon(
            icon,
            color: color,
            size: size,
          ),
        ),
      ),
    );
  }
}
