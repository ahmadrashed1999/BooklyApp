part of 'featuer_books_cubit.dart';

abstract class FeatuerBooksState extends Equatable {
  const FeatuerBooksState();

  @override
  List<Object> get props => [];
}

class FeatuerBooksInitial extends FeatuerBooksState {}

class FeatuerBooksLoading extends FeatuerBooksState {}

class FeatuerBooksSuccess extends FeatuerBooksState {
  final List<BookModel> books;

  const FeatuerBooksSuccess(this.books);
  // @override
  // List<Object> get props => [books];
}

class FeatuerBooksFailuer extends FeatuerBooksState {
  final String message;

  const FeatuerBooksFailuer(this.message);
}
