import 'package:flutter/material.dart';

import 'book_deatiles_section.dart';

import 'custom_book_deatiles_app_bar.dart';
import 'similar_books_section.dart';

class BookDeatilsViewBody extends StatelessWidget {
  const BookDeatilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: const [
              CustomBookDeatilsAppBar(),
              BookDeatilesSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilarBooksSections(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
