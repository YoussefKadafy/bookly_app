import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.bookModel});
  final List<BookModel> bookModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 11,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: NewestBooksListViewItem(
            bookModel: bookModel[index],
          ),
        );
      },
    );
  }
}
