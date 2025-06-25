import 'package:bookly/core/utils/helper.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/booking_rate.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.all(Helper.kwidth(context) * .15),
            child: const CustomBookImage(
              imageUrl: "https://m.media-amazon.com/images/I/81ANaVZk5LL.jpg",
            ),
          ),
          const Text(
            "Atomic Habits",
            style: Styles.textStyle30,
          ),
          Text(
            "James Clear ",
            style: Styles.textStyle18.copyWith(color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BookRating(),
            ],
          )
        ],
      ),
    );
  }
}
