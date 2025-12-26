import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Montserrat'),
        // textTheme: GoogleFonts.playfairDisplayTextTheme(
        //   ThemeData.dark().textTheme,
        // ),
      ),
      //home: const SplashView(),
    );
  }
}
