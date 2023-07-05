import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.hemeRepo) : super(SimilarBooksInitial());
  final HomeRepo hemeRepo;

  Future<void> fetchSimilarBook({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await hemeRepo.fetchSimilarBooks(category: category);
    result.fold((failuer) => emit(SimilarBooksFailed(failuer.errorMessage)),
        (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
