import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/failure_widget.dart';
import 'package:bookly/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/feature_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
          builder: (context, state) {
            if (state is FeaturedBooksSuccessful) {
              return SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                        childCount: 10,
                        (context, index) => BestSellerListViewItem(
                              rating: state.books[index].volumeInfo.AverageRating,
                              imageUrl: state.books[index].volumeInfo!
                                  .imageLinks!.thumbnail!,
                              title: state.books[index].volumeInfo!.title!,
                              subtitle:
                                  state.books[index].volumeInfo!.authors![0],
                            ))),
              );
            } else if (state is FeaturedBooksFailure) {
              return FailureWidget(errorMessage: state.errorMessage);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )
      ],
    );
  }
}
