import 'package:bookly_app/core/utils/widgets/custom_bottun.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomBottun(
              onPressed: () {},
              text: 'Free',
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              fontWeight: FontWeight.w900,
              fontSize: 22,
            ),
          ),
          Expanded(
            child: CustomBottun(
              onPressed: () {
                Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);

                launchUrl(url);
              },
              text: 'Free Preview',
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              fontSize: 16,
              fontColor: Colors.white,
              backgroundColor: const Color(0xffEE8363),
            ),
          ),
        ],
      ),
    );
  }
}
