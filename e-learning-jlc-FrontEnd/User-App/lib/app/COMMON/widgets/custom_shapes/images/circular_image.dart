import 'package:flutter/material.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    required this.imagePath,
    this.size = 60,
    this.isNetwork = false,
    this.fit = BoxFit.cover,
    this.borderColor,
    this.borderWidth = 0,
  });
  final String imagePath;
  final double size;
  final bool isNetwork;
  final BoxFit fit;
  final Color? borderColor;
  final double borderWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: borderColor != null
            ? Border.all(color: borderColor!, width: borderWidth)
            : null,
        image: DecorationImage(
          image: isNetwork
              ? NetworkImage(imagePath)
              : AssetImage(imagePath) as ImageProvider,
          fit: fit,
        ),
      ),
    );
  }
}
