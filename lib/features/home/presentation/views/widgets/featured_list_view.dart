import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .28,
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
