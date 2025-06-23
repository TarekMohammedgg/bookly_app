import 'package:bookly/core/utils/helper.dart';
import 'package:bookly/features/home/presentation/views/widgets/feature_book_list_view_item.dart';
import 'package:flutter/material.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List bookList = [
      "https://m.media-amazon.com/images/I/81ANaVZk5LL.jpg",
      "https://assets.wuiltstore.com/cln09ebsu03qh01i5celuclgc__D8_A7_D9_84_D9_87_D8_B4_D8_A7_D8_B4_D8_A9-_D8_A7_D9_84_D9_86_D9_81_D8_B3_D9_8A_D8_A9-_D8_A7_D9_95_D8_B3_D9_85_D8_A7_D8_B9_D9_8A_D9_84-_D8_B9_D8_B1_D9_81_D8_A9.jpeg",
      "https://m.media-amazon.com/images/I/81ANaVZk5LL.jpg",
      "https://assets.wuiltstore.com/cln09ebsu03qh01i5celuclgc__D8_A7_D9_84_D9_87_D8_B4_D8_A7_D8_B4_D8_A9-_D8_A7_D9_84_D9_86_D9_81_D8_B3_D9_8A_D8_A9-_D8_A7_D9_95_D8_B3_D9_85_D8_A7_D8_B9_D9_8A_D9_84-_D8_B9_D8_B1_D9_81_D8_A9.jpeg",
      "https://m.media-amazon.com/images/I/81ANaVZk5LL.jpg",
      "https://assets.wuiltstore.com/cln09ebsu03qh01i5celuclgc__D8_A7_D9_84_D9_87_D8_B4_D8_A7_D8_B4_D8_A9-_D8_A7_D9_84_D9_86_D9_81_D8_B3_D9_8A_D8_A9-_D8_A7_D9_95_D8_B3_D9_85_D8_A7_D8_B9_D9_8A_D9_84-_D8_B9_D8_B1_D9_81_D8_A9.jpeg"
    ];
    return SizedBox(
      height: Helper.kheight(context) * .3,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 0, right: 10),
          child: FeatureBookListViewItem(imageUrl: bookList[index]),
        ),
      ),
    );
  }
}
