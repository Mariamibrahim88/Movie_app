import 'package:movie_app/models/movie_model.dart';

import '../helper/Api.dart';

class AllMovieservices {
  Future<List<MovieModel>> getAllMovies() async {
    List<dynamic> data =
        await Api().get(url: 'https://movie-app-5wo8.onrender.com/movies');

    List<MovieModel> movies = [];

    for (int i = 0; i < data.length; i++) {
      movies.add(
        MovieModel.fromJson(data[i]),
      );
    }
    return movies;
  }
}
