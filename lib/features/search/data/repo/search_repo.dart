import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dart_either/dart_either.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchResult(
      {required String subject});
}
