import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_list_view_item.dart';

class BookDeatilesSection extends StatelessWidget {
  const BookDeatilesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: const CustomListViewItem(
            imageUrl:
                'https://designforwriters.com/wp-content/uploads/2017/10/design-for-writers-book-cover-pp-mrh-4-thy-fathers-house.jpg',
          ),
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
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 4.5,
          count: 100,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
