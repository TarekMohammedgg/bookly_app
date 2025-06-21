import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            height: 100,
            width: 150,
            child: Image.asset(Assets.logo),
          ),
        ),
        const Center(
          child: Text(
            "Red Free Books ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
