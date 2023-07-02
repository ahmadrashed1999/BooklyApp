import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class FeatuerdBooksListView extends StatelessWidget {
  const FeatuerdBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16),
            child: CustomListViewItem(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
