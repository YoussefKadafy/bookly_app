import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dart_either/dart_either.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(endPoint: 'q=bug bounty');

      List<BookModel> booksList = [];
      if (data.isNotEmpty && data.containsKey('items'))
        for (var element in data['items']) {
          booksList.add(BookModel.fromJson(element));
        }
      return Right(booksList);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServiceFailure.fromDioError(e));
      }
      return Left(ServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endPoint: 'q=cyber security');
      List<BookModel> bookList = [];
      if (data.isNotEmpty && data.containsKey('items'))
        for (var element in data['items']) {
          bookList.add(BookModel.fromJson(element));
        }
      return Right(bookList);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServiceFailure.fromDioError(e));
      }
      return Left(ServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimiliarBooks() async {
    try {
      var data = await apiService.get(endPoint: 'q=cyber security');

      List<BookModel> books = [];
      if (data.isNotEmpty && data.containsKey('items'))
        for (var element in data['items']) {
          books.add(BookModel.fromJson(element));
        }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServiceFailure(e.toString()));
      } else {
        return Left(ServiceFailure(e.toString()));
      }
    }
  }
}
