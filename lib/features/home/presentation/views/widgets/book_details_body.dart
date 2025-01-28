import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const CustomBookDetailsAApBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .18),
                  child: const FeaturedListViewItem(),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 3,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18
                        .copyWith(fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const RatingBook(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like :',
                    style: Styles.textStyle18,
                  ),
                ),
                const SimilarBookListView(),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (contexr, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: FeaturedListViewItem(),
              );
            }),
      ),
    );
  }
}
