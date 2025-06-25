import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: CustomButton(
          title: "19.99 €",
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          textColor: Colors.black,
        )),
        Expanded(
            child: CustomButton(
          title: "Free Preview",
          backgroundColor: Colors.orange,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
          textColor: Colors.white,
        ))
      ],
    );
  }
}
