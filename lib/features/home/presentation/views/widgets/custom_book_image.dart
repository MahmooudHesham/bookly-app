import 'package:bookly/features/home/presentation/views/widgets/custom_book_Image_loading.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgUrl});
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 5,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(16),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imgUrl,
          placeholder: (context, url) => const CustomBookImageLoading(),
          errorWidget: (context, url, error) =>
              const Icon(Icons.error, color: Colors.red, size: 30),
        ),
      ),
      //  Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(16),
      //     image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(imgUrl)),
      //   ),
      // ),
    );
  }
}
