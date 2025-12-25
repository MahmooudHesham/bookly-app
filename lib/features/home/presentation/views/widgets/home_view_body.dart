import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          CustomAppBar(),
          SizedBox(height: 40),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text("Best Seller", style: Styles.textStyle20),
          SizedBox(height: 20),
          BestSellerListViewitem(),
        ],
      ),
    );
  }
}

class BestSellerListViewitem extends StatelessWidget {
  const BestSellerListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3.2 / 5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/test_book_cover_1.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
