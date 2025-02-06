import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rate,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;

  final int rate;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            size: 14,
            color: Colors.amber,
          ),
          const SizedBox(
            width: 6.3,
          ),
          Text(
            '$rate',
            style: Styles.textStyle16,
          ),
          const SizedBox(
            width: 5,
          ),
          Opacity(
            opacity: .5,
            child: Text(
              '($count)',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
