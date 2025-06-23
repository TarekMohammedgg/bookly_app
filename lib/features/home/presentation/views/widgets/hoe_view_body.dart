import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_card_item.dart';
import 'package:flutter/material.dart';

class HoeViewBody extends StatelessWidget {
  const HoeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), CustomCardItem()],
    );
  }
}
