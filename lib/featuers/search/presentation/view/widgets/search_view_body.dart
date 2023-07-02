import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(
            height: 30,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: SearchResultListView(),
          )
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: BestSellerListViewItem(),
        );
      },
      itemCount: 10,
    );
  }
}
