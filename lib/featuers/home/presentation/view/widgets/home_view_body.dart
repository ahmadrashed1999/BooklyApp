import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';

import 'featuerd_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeatuerdBooksListView(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18.copyWith(fontFamily: kAmiri),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
