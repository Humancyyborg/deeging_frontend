import 'package:flutter/material.dart';

class OwnersProfileImage extends StatelessWidget {
  final String ownersImageUrl;
  final double? size;
  const OwnersProfileImage({
    Key? key,
    required this.ownersImageUrl,
    this.size = 48,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size! / 2 - size! / 18),
      child: Image.asset(
        ownersImageUrl,
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}