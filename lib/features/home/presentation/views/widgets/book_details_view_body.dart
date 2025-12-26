import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/bood_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_buttons.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_box_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const SafeArea(child: CustomBookDetailAppBar()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.23),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43),
          Text(
            'Dead FLowers',
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
          const SizedBox(height: 40),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text(
              "You may also like",
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
