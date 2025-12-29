import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    this.mainAxisAlignment = MainAxisAlignment.start,
    super.key,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 14),

        const SizedBox(width: 6.3),

        const Text("4.8", style: Styles.textStyle16),

        const SizedBox(width: 5),

        Text(
          "(299)",
          style: Styles.textStyle14.copyWith(
            color: Colors.white.withAlpha(128),
          ),
        ),
      ],
    );
  }
}
