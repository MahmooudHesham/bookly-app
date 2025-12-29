import 'package:bookly/features/home/presentation/views/widgets/custom_book_Image_loading.dart';
import 'package:flutter/material.dart';

class FeaturedBooksLoadingIndicator extends StatelessWidget {
  const FeaturedBooksLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookImageLoading(),
          );
        },
      ),
    );
  }
}
