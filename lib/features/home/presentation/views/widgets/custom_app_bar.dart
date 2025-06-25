import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          Assets.logo,
          height: 50,
          width: 100,
        ),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.ksearchView);
          },
          child: Image.asset(Assets.searchIcon, height: 30, width: 30),
        )
      ],
    );
  }
}
