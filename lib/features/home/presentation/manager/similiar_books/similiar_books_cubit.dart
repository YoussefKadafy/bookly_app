import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similiar_books_state.dart';

class SimiliarBooksCubit extends Cubit<SimiliarBooksState> {
  SimiliarBooksCubit(this.homeRepo) : super(SimiliarBooksInitial());

  HomeRepo homeRepo;
  Future<void> fetchSimiliarBooks() async {
    emit(SimiliarBooksLoading());
    var result = await homeRepo.fetchSimiliarBooks();
    result.fold(ifLeft: (failure) {
      emit(SimiliarBooksFailure(failure.toString()));
    }, ifRight: (books) {
      emit(SimiliarBooksSuccesse(books));
    });
  }
}
