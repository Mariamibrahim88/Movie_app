import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/widgets/movie_card_builder.dart';
import 'package:movie_app/widgets/movies_Card.dart';

import '../models/category_model.dart';
import '../services/get_movies_of_categories.dart';

class MoviesViewOfCategory extends StatelessWidget {
  MoviesViewOfCategory({super.key});

  static String id = "movies_view_of_category";

  @override
  Widget build(BuildContext context) {
    final movies = ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Center(child: const Text('Movies of Category')),
      ),
      body: movie_card_builder(
        future: MoviesOfcategoriesServices().getMoviesOfCategories(id: movies!),
      ),
    );
  }
}
