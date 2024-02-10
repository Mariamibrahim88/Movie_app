import 'package:flutter/material.dart';
import 'package:movie_app/views/categories_view.dart';
import 'package:movie_app/views/movie_details.dart';
import 'package:movie_app/views/movies_view.dart';
import 'package:movie_app/views/movies_view_of_category.dart';
import 'package:movie_app/views/nav.dart';
import 'package:movie_app/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      //darkTheme: ThemeData.dark(),
      routes: {
        MoviesView.id: (context) => MoviesView(),
        CategoriesView.id: (context) => CategoriesView(),
        MovieDetails.id: (context) => MovieDetails(),
        MoviesViewOfCategory.id: (context) => MoviesViewOfCategory(),
        splashh.id: (context) => splashh(),
        Nav.id: (context) => Nav(),
      },
      initialRoute: splashh.id,
    );
  }
}
