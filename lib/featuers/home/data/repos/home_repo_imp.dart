import 'package:booklyapp/featuers/home/data/model/book_model/book_model.dart';
import 'package:booklyapp/core/errors/failuers.dart';
import 'package:booklyapp/featuers/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/utils/api_service.dart';

class HomeRepoImp implements HomeRepo {
  late final ApiService apiService;
  @override
  Future<Either<Failuers, List<BookModel>>> fetchNewsetBooks() {
    try {
      var data = apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');

      return data.then((value) => Right(value['items']
          .map<BookModel>((e) => BookModel.fromJson(e))
          .toList()));

      //or
      //   List<BookModel> books = [];
      // for (var item in data['items']) {
      //   books.add(BookModel.fromJson(item));
      // }
    } catch (e) {
       return Future.value(Left(ServerFailuer()));
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchFeatuerdBooks() {
    // TODO: implement fetchFeatuerdBooks
    throw UnimplementedError();
  }
}
