import 'package:bookly_app/core/utils/widgets/custom_error_message.dart';
import 'package:bookly_app/core/utils/widgets/loading_indacator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/similiar_books/similiar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: BlocBuilder<SimiliarBooksCubit, SimiliarBooksState>(
        builder: (context, state) {
          if (state is SimiliarBooksFailure) {
            return CustomErrorMessage(errorMessage: state.errorMessage);
          }
          if (state is SimiliarBooksSuccesse) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * .15,
              child: ListView.builder(
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contexr, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CustomImageItem(
                        imgUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            '',
                      ),
                    );
                  }),
            );
          }
          return const CustomLoadingIndicator();
        },
      ),
    );
  }
}
