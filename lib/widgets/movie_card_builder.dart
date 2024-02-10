import 'package:flutter/material.dart';

import '../models/movie_model.dart';
import 'movies_Card.dart';

class movie_card_builder extends StatefulWidget {
  movie_card_builder({super.key, required this.future});
  var future;

  @override
  State<movie_card_builder> createState() => _movie_card_builderState();
}

class _movie_card_builderState extends State<movie_card_builder> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MovieModel>>(
        future: widget.future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<MovieModel> movies = snapshot.data!;
            return ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return MoviesCard(
                  movies: movies[index],
                );
              },
            );
          } else {
            return const Center(
                child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.grey),
            ));
          }
        });
  }
}
