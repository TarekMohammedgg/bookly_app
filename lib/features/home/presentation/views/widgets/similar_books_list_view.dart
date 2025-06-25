import 'package:bookly/core/utils/helper.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Helper.kheight(context) * .2,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(left: 0, right: 10),
          child: CustomBookImage(
              imageUrl: "https://m.media-amazon.com/images/I/81ANaVZk5LL.jpg"),
        ),
      ),
    );
  }
}
