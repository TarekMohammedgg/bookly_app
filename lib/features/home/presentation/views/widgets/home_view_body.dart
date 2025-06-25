import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/feature_list_view.dart';
import 'package:flutter/material.dart';

class HoeViewBody extends StatelessWidget {
  const HoeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate(const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: CustomAppBar(),
          ),
          FeatureListView(),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              "Best Seller",
              style: Styles.textStyle18,
            ),
          ),
        ])),
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 10,
                  (context, index) => const BestSellerListViewItem())),
        )
      ],
    );
  }
}
