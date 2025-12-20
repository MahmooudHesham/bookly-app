import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [SizedBox(height: 50), CustomAppBar(), CustomListViewItem()],
      ),
    );
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 188,

      decoration: const BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/test_book_cover_1.jpg'),
        ),
      ),
    );
  }
}
