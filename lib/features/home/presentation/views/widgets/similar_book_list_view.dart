import 'package:bookly_app/features/home/presentation/views/widgets/custom_image_item.dart';
import 'package:flutter/material.dart';

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
                child: CustomImageItem(
                  imgUrl:
                      'https://images.squarespace-cdn.com/content/v1/60f1a490a90ed8713c41c36c/1629223610791-LCBJG5451DRKX4WOB4SP/37-design-powers-url-structure.jpeg',
                ),
              );
            }),
      ),
    );
  }
}
