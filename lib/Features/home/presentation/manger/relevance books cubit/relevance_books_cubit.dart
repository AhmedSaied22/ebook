import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/data/repository/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'relevance_books_state.dart';

class RelevanceBooksCubit extends Cubit<RelevanceBooksState> {
  RelevanceBooksCubit(this.homeRepo) : super(RelevanceBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchRelevanceBooks({required String category}) async {
    emit(RelevanceBooksLoading());
    var result = await homeRepo.fetchRelevanceBooks(category: category);
    result.fold((failure) => emit(RelevanceBooksFailure(failure.errMessage)),
        (books) => emit(RelevanceBooksSuccess(books)));
  }
}
