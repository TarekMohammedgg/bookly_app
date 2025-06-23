import 'package:bookly/core/utils/helper.dart';
import 'package:flutter/material.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Helper.kheight(context) * .3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4 // take width / height rate
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
      ),
    );
  }
}
