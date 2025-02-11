part of 'newestbooks_cubit.dart';

abstract class NewestbooksState extends Equatable {
  const NewestbooksState();

  @override
  List<Object> get props => [];
}

class NewestbooksInitial extends NewestbooksState {}

class NewestbooksLoading extends NewestbooksState {}

class NewestbooksSuccess extends NewestbooksState {
  final List<BookModel> books;

  const NewestbooksSuccess(this.books);
}

class NewestbooksFailure extends NewestbooksState {
  final String errorMessage;

  const NewestbooksFailure(this.errorMessage);
}
