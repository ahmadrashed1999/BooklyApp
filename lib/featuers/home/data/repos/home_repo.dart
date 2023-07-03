import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuers.dart';
import '../model/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failuers,List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failuers, List<BookModel>>> fetchFeatuerdBooks();
}
