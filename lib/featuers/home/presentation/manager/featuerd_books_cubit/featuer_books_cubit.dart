import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';

part 'featuer_books_state.dart';

class FeatuerBooksCubit extends Cubit<FeatuerBooksState> {
  FeatuerBooksCubit() : super(FeatuerBooksInitial());
}
