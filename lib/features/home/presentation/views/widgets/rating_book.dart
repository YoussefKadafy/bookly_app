import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.amber,
          ),
          SizedBox(
            width: 6.3,
          ),
          Text(
            '4.8',
            style: Styles.textStyle16,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '(258)',
            style: Styles.textStyle14,
          ),
        ],
      ),
    );
  }
}
