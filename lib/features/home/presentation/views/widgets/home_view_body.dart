import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomAppBar(),
            FeaturedListView(),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 30.0),
              child: Text(
                'Newest Books',
                style: Styles.textStyle18,
              ),
            ),
          ]),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 30.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
