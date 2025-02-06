import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_image_item.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          SizedBox(
            height: 30,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(child: SearchResultListView()),
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
      itemCount: 11,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20), child: Container(),
          // child: NewestBooksListViewItem(bookModel: ,),
        );
      },
    );
  }
}
