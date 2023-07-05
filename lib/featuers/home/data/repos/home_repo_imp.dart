import 'package:booklyapp/featuers/home/data/model/book_model/book_model.dart';
import 'package:booklyapp/core/errors/failuers.dart';
import 'package:booklyapp/featuers/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_service.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp(this.apiService);
  @override
  Future<Either<Failuers, List<BookModel>>> fetchNewsetBooks() {
    try {
      var data = apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:computer since');

      return data.then((value) => Right(value['items']
          .map<BookModel>((e) => BookModel.fromJson(e))
          .toList()));

      //or
      //   List<BookModel> books = [];
      // for (var item in data['items']) {
      //   books.add(BookModel.fromJson(item));
      // }
    } catch (e) {
      if (e is DioException) {
        return Future.value(Left(ServerFailuer.fromDioException(e)));
      }

      return Future.value(Left(ServerFailuer(e.toString())));
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchFeatuerdBooks() {
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
      if (e is DioException) {
        return Future.value(Left(ServerFailuer.fromDioException(e)));
      }

      return Future.value(Left(ServerFailuer(e.toString())));
    }
  }

  @override
  Future<Either<Failuers, BookModel>> fetchSimilarBooks(
      {required String category}) {
    try {
      var data = apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:programming');

      return data.then((value) => Right(value['items']
          .map<BookModel>((e) => BookModel.fromJson(e))
          .toList()));

      //or
      //   List<BookModel> books = [];
      // for (var item in data['items']) {
      //   books.add(BookModel.fromJson(item));
      // }
    } catch (e) {
      if (e is DioException) {
        return Future.value(Left(ServerFailuer.fromDioException(e)));
      }

      return Future.value(Left(ServerFailuer(e.toString())));
    }
  }
}
