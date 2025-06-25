import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.khomeView);
            },
            icon: const Icon(Icons.close_sharp)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
      ],
    );
  }
}
