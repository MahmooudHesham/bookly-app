import 'package:bookly/features/home/presentation/views/widgets/custom_book_Image_loading.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SimilarBooksSectionLoading extends StatelessWidget {
  const SimilarBooksSectionLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
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
      ),
    );
  }
}
