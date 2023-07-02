import 'package:booklyapp/featuers/home/presentation/view/widgets/book_deatils_view_body.dart';
import 'package:flutter/material.dart';

class BookDeatilsView extends StatelessWidget {
  const BookDeatilsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: BookDeatilsViewBody()));
  }
}
