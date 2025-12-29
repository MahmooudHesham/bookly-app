import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookImageLoading extends StatelessWidget {
  const CustomBookImageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 5,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!, // لون الخلفية
        highlightColor: Colors.grey[100]!, // لون اللمعة
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // لازم لون عشان يظهر
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
