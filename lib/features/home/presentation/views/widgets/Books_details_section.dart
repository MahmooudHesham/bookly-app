import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/bood_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_buttons.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.23),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43),
        Text(
          'Dead Flowers',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 6),

        Text(
          'J.M. Petrick',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withAlpha(179),
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BooksDetailsButtons(),
      ],
    );
  }
}
