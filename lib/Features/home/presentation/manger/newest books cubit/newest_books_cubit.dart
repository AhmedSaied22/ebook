import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/data/repository/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) => emit(NewestBooksFailure(failure.errMessage)),
        (books) => emit(NewestBooksSuccess(books)));
  }
}
