import 'package:flutter/material.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({
    super.key,
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
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://m.media-amazon.com/images/I/81ANaVZk5LL.jpg"))),
      ),
    );
  }
}
