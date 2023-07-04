import 'package:flutter/material.dart';

import 'widgets/custom_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 12),
            child: CustomListViewItem(
              imageUrl: 'https://designforwriters.com/wp-content/uploads/2017/10/design-for-writers-book-cover-pp-mrh-4-thy-fathers-house.jpg',
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
