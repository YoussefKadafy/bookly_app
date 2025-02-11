part of 'similiar_books_cubit.dart';

abstract class SimiliarBooksState extends Equatable {
  const SimiliarBooksState();

  @override
  List<Object> get props => [];
}

class SimiliarBooksInitial extends SimiliarBooksState {}

class SimiliarBooksFailure extends SimiliarBooksState {
  final String errorMessage;
  const SimiliarBooksFailure(this.errorMessage);
}

class SimiliarBooksSuccesse extends SimiliarBooksState {
  final List<BookModel> books;
  const SimiliarBooksSuccesse(this.books);
}

class SimiliarBooksLoading extends SimiliarBooksState {}
