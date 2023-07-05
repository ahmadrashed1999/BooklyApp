import 'package:booklyapp/featuers/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/featuers/home/presentation/view/widgets/book_deatils_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/book_model/book_model.dart';

class BookDeatilsView extends StatefulWidget {
  const BookDeatilsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDeatilsView> createState() => _BookDeatilsViewState();
}

class _BookDeatilsViewState extends State<BookDeatilsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBook(
        category: widget.bookModel.volumeInfo!.categories!.first);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: BookDeatilsViewBody()));
  }
}
