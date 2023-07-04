import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.hemeRepo) : super(NewestBooksInitial());
  final HomeRepo hemeRepo;

  Future<void> fetchNewestBook() async {
    emit(NewestBooksLoading());
    var result = await hemeRepo.fetchNewsetBooks();
    result.fold((failuer) => emit(NewestBooksFailuer(failuer.errorMessage)),
        (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
