part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final BookModel book;

  const SimilarBooksSuccess(this.book);
}

class SimilarBooksFailed extends SimilarBooksState {
  final String message;

  const SimilarBooksFailed(this.message);
}
