import 'package:booklyapp/featuers/home/presentation/manager/featuerd_books_cubit/featuer_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_circualr_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import 'custom_list_view_item.dart';

class FeatuerdBooksListView extends StatelessWidget {
  const FeatuerdBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerBooksCubit, FeatuerBooksState>(
      builder: (context, state) {
        if (state is FeatuerBooksSuccess) {
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
        } else if (state is FeatuerBooksFailuer) {
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
