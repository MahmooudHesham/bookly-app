import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetialsView, extra: bookModel);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CustomBookImage(
              imgUrl:
                  bookModel.volumeInfo.imageLinks?.thumbnail ??
                  'https://blog-cdn.reedsy.com/directories/gallery/285/large_7dd6a2cc216d856056547f26ea3d3b78.jpg',
            ),
            // AspectRatio(
            //   aspectRatio: 3.2 / 5,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(8),
            //       image: const DecorationImage(
            //         fit: BoxFit.fill,
            //         image: AssetImage('assets/images/test_book_cover_1.jpg'),
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kPlayfairDisplay,
                      ),
                    ),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    bookModel.volumeInfo.authors?.isNotEmpty == true
                        ? bookModel.volumeInfo.authors![0]
                        : 'Unknown Auther',
                    style: Styles.textStyle14,
                  ),

                  const SizedBox(height: 3),

                  const Row(
                    children: [
                      Text("Free", style: Styles.textStyle20),
                      Spacer(flex: 1),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
