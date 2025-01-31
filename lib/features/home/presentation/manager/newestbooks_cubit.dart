import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newestbooks_state.dart';

class NewestbooksCubit extends Cubit<NewestbooksState> {
  NewestbooksCubit(this.homeRepo) : super(NewestbooksInitial());

  HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestbooksLoading());
    var response = await homeRepo.fetchNewestBooks();
    response.fold(ifLeft: (failure) {
      emit(
        NewestbooksFailure(
          failure.toString(),
        ),
      );
    }, ifRight: (books) {
      emit(
        NewestbooksSuccess(books),
      );
    });
  }
}
