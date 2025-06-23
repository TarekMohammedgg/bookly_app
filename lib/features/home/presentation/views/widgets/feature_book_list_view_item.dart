import 'package:flutter/material.dart';

class FeatureBookListViewItem extends StatelessWidget {
  final String imageUrl;
  const FeatureBookListViewItem({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.1 / 4 // take width / height rate
      ,
      child: Container(
        height: 200,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(imageUrl))),
      ),
    );
  }
}
