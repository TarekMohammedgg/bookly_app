import 'package:bookly/core/widgets/failure_widget.dart';
import 'package:bookly/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) =>
            BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
          builder: (context, state) {
            if (state is FeaturedBooksSuccessful) {
              return BestSellerListViewItem(
                imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                title: state.books[index].volumeInfo!.title!,
                subtitle: state.books[index].volumeInfo!.authors![0],
              );
            } else if (state is FeaturedBooksFailure) {
              return FailureWidget(errorMessage: state.errorMessage);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
