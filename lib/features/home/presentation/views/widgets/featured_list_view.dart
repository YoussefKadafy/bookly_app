import 'package:bookly_app/core/utils/widgets/custom_error_message.dart';
import 'package:bookly_app/core/utils/widgets/loading_indacator.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if (state is FeaturedBooksFailure) {
            return const CustomErrorMessage(errorMessage: 'there is an error');
          }
          if (state is FeaturedBooksSuccesse) {
            print('@@@@@@@@@@@${state.books.length}');
            return SizedBox(
              height: MediaQuery.of(context).size.height * .28,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
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
