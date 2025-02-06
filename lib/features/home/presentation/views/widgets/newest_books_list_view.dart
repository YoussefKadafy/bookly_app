import 'package:bookly_app/core/utils/widgets/custom_error_message.dart';
import 'package:bookly_app/core/utils/widgets/loading_indacator.dart';
import 'package:bookly_app/features/home/presentation/manager/newestbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestbooksCubit, NewestbooksState>(
      builder: (context, state) {
        if (state is NewestbooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        }
        if (state is NewestbooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: NewestBooksListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        }
        return const CustomLoadingIndicator();
      },
    );
  }
}
