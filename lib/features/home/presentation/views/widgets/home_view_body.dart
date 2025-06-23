import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/feature_list_view.dart';
import 'package:flutter/material.dart';

class HoeViewBody extends StatelessWidget {
  const HoeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureListView(),
          SizedBox(
            height: 60,
          ),
          Text(
            "Best Seller",
            style: Styles.titleMedium,
          ) , 
          
        ],
      ),
    );
  }
}
