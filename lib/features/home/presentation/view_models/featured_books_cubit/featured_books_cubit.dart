import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/view_models/featured_books_cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.repo) : super(FeaturedBooksInitial());
  final HomeRepo repo;

  Future<void> fetchFeaturebooks() async {
    emit(FeaturedBooksLoading());
    var result = await repo.fetchNewestBooks();
    return result.fold(
        (failure) => emit(FeaturedBooksFailure(failure.errorMessage)),
        (books) => emit(FeaturedBooksSuccessful(books)));
  }
}
