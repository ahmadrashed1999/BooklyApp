import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'featuer_books_state.dart';

class FeatuerBooksCubit extends Cubit<FeatuerBooksState> {
  FeatuerBooksCubit(this.hemeRepo) : super(FeatuerBooksInitial());
  final HomeRepo hemeRepo;

  Future<void> fetchFeatcherdBook() async {
    emit(FeatuerBooksLoading());
   var result= await hemeRepo.fetchFeatuerdBooks();
    result.fold((failuer) => emit(FeatuerBooksFailuer(failuer.errorMessage)), (books) {
      emit(FeatuerBooksSuccess(books));
    });
  }
}
