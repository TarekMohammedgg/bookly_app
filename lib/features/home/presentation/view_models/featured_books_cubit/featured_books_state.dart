import 'package:bookly/features/home/data/models/book_model/book_model.dart';

class FeaturedBooksState {
  const FeaturedBooksState();
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksSuccessful extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksSuccessful(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;
  const FeaturedBooksFailure(this.errorMessage);
}

class FeaturedBooksLoading extends FeaturedBooksState {}
