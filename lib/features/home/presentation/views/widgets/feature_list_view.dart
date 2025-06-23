import 'package:bookly/core/utils/helper.dart';
import 'package:bookly/features/home/presentation/views/widgets/feature_list_view_item.dart';
import 'package:flutter/material.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Helper.kheight(context) * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(left: 0, right: 10),
          child: FeatureListViewItem(),
        ),
      ),
    );
  }
}
