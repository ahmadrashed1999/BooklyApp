import 'package:booklyapp/featuers/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_circualr_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (
        context,
        state,
      ) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: BestSellerListViewItem(),
              );
            },
          );
        } else if (state is NewestBooksFailuer) {
          return Center(
            child: CustomErrorWidget(
              errMessage: state.message,
            ),
          );
        }
        return const Center(
          child: CustomLoadingIndicator(),
        );
      },
    );
  }
}
