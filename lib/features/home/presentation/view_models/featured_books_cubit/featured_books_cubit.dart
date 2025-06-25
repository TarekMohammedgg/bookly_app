import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/presentation/view_models/featured_books_cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
