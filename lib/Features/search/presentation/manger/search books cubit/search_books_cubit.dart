import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_book/Features/search/data/repository/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;
  String? searchInput;

  Future<void> fetchSearchBooks({required String searchInput}) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchBooks(searchInput: searchInput);
    result.fold((failure) => emit(SearchBooksFailure(failure.errMessage)),
        (books) {
      if (books.isNotEmpty) {
        emit(SearchBooksSuccess(books));
      } else {
        emit(SearchBooksEmptyResults());
      }
    });
  }
}
