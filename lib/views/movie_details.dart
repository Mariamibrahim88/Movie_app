import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/services/getMovies_By_Id.dart';
import 'package:movie_app/widgets/movie_card_details.dart';
import 'package:movie_app/widgets/movies_Card.dart';

class MovieDetails extends StatelessWidget {
  MovieDetails({
    super.key,
  });

  static String id = "Movie_details";

  @override
  Widget build(BuildContext context) {
    final movies = ModalRoute.of(context)!.settings.arguments as String?;
    //final productId = ModalRoute.of(context)?.settings.arguments as String

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Details'),
      ),
      body: FutureBuilder<MovieModel>(
        future: AllmoviesById().getMovies(id: movies!),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            MovieModel movies = snapshot.data!;
            return MovieCardDetails(
              movies: movies,
            );
          } else {
            return const Center(
                child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.grey),
            ));
          }
        },
      ),
    );
  }
}
