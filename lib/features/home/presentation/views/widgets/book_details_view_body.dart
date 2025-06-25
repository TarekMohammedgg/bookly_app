import 'package:bookly/core/utils/helper.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/booking_rate.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.only(
                      left: Helper.kwidth(context) * .25,
                      right: Helper.kwidth(context) * .25,
                      top: Helper.kwidth(context) * .02),
                  child: const CustomBookImage(
                    imageUrl:
                        "https://m.media-amazon.com/images/I/81ANaVZk5LL.jpg",
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                  children: [BookRating()],
                ),
                const SizedBox(
                  height: 6,
                ),
                const BookActions(),
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "you can like also",
                      style: Styles.textStyle16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SimilarBooksListView(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
