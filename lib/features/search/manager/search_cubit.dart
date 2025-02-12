import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  SearchRepo searchRepo;

  Future<void> fetchSearchResult({required String subject}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchResult(subject: subject);
    result.fold(ifLeft: (failure) {
      emit(SearchFailure(failure.toString()));
    }, ifRight: (books) {
      emit(SearchSuccess(books));
    });
  }
}
