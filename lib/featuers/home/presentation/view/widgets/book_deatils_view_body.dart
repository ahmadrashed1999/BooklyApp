import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

import '../similar_books_list_view.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_deatiles_app_bar.dart';
import 'custom_list_view_item.dart';

class BookDeatilsViewBody extends StatelessWidget {
  const BookDeatilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              const CustomBookDeatilsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                child: const CustomListViewItem(),
              ),
              const SizedBox(
                height: 43,
              ),
              const Text('The Jungle book', style: Styles.textStyle30),
              const SizedBox(
                height: 5,
              ),
              Opacity(
                opacity: 0.7,
                child: Text('The Jungle book',
                    style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: 18,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 37,
              ),
              const BookAction(),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SimilarBooksListView(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
