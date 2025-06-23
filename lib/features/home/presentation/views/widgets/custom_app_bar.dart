import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Assets.logo,
            height: 100,
            width: 100,
          ),
          GestureDetector(
            child: Image.asset(Assets.searchIcon, height: 30, width: 30),
          )
        ],
      ),
    );
  }
}
