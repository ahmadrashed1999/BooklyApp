import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://designforwriters.com/wp-content/uploads/2017/10/design-for-writers-book-cover-pp-mrh-4-thy-fathers-house.jpg'),
          ),
        ),
      ),
    );
  }
}
