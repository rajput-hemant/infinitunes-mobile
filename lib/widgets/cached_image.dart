import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.imageUrl,
    this.dimension = 150,
    this.borderRadius = 10,
  });

  final String imageUrl;
  final double dimension, borderRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      child: SizedBox.square(
        dimension: dimension,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          // errorWidget: (context, _, __) => Image(
          //   fit: BoxFit.cover,
          //   image: AssetImage(""),
          // ),
          // placeholder: (context, _) => Image(
          //   fit: BoxFit.cover,
          //   image: AssetImage(""),
          // ),
        ),
      ),
    );
  }
}
