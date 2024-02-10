import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/services/get_all_movies.dart';

import '../widgets/movie_card_builder.dart';
import '../widgets/movies_Card.dart';

class MoviesView extends StatelessWidget {
  MoviesView({super.key});

  static String id = "movies_view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Movies')),
        ),
        body: movie_card_builder(
          future: AllMovieservices().getAllMovies(),
        ));
  }
}
