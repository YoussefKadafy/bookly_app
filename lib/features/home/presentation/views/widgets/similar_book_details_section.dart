import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class SimiliarBookDetailsSection extends StatelessWidget {
  const SimiliarBookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like :',
          style: Styles.textStyle18,
        ),
        SimilarBookListView(),
      ],
    );
  }
}
