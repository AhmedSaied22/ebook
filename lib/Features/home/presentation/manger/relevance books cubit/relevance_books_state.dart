part of 'relevance_books_cubit.dart';

sealed class RelevanceBooksState extends Equatable {
  const RelevanceBooksState();

  @override
  List<Object> get props => [];
}

class RelevanceBooksInitial extends RelevanceBooksState {}

class RelevanceBooksLoading extends RelevanceBooksState {}

class RelevanceBooksFailure extends RelevanceBooksState {
  final String errMessage;
  const RelevanceBooksFailure(this.errMessage);
}

class RelevanceBooksSuccess extends RelevanceBooksState {
  final List<BookModel> books;
  const RelevanceBooksSuccess(this.books);
}
