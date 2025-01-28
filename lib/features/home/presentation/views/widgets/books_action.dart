import 'package:bookly_app/core/utils/widgets/custom_bottun.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomBottun(
              text: '19.12 €',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              fontWeight: FontWeight.w900,
              fontSize: 22,
            ),
          ),
          Expanded(
            child: CustomBottun(
              text: 'Free Preview',
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              fontSize: 16,
              fontColor: Colors.white,
              backgroundColor: Color(0xffEE8363),
            ),
          ),
        ],
      ),
    );
  }
}
