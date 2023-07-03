part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewesBooksLoading extends NewestBooksState {}

class NewesBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewesBooksSuccess(this.books);
}

class NewesBooksFailuer extends NewestBooksState {
  final String message;

  const NewesBooksFailuer(this.message);
}
