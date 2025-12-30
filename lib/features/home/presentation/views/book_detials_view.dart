import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/maneger/similar_book/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetialsView extends StatefulWidget {
  const BookDetialsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetialsView> createState() => _BookDetialsViewState();
}

class _BookDetialsViewState extends State<BookDetialsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(
      context,
    ).fetchSimilarBooks(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BookDetailsViewBody());
  }
}
