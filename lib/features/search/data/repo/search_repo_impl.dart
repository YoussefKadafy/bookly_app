import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:dart_either/src/dart_either.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;
  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchResult(
      {required String subject}) async {
    try {
      var data = await apiService.get(endPoint: 'q=$subject');

      List<BookModel> booksList = [];
      if (data.isNotEmpty && data.containsKey('items'))
        for (var element in data['items']) {
          booksList.add(BookModel.fromJson(element));
        }
      print('@@@@@@@@@@@@@@@@@@@@@${data.length}');
      return Right(booksList);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServiceFailure(e.toString()));
      }
      return Left(ServiceFailure(e.toString()));
    }
  }
}
