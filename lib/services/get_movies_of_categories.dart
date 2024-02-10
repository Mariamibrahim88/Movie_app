import 'package:movie_app/models/movie_model.dart';

import '../helper/Api.dart';

class MoviesOfcategoriesServices {
  Future<List<MovieModel>> getMoviesOfCategories({required String id}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://movie-app-5wo8.onrender.com/categories/$id/movies');

    List<MovieModel> movies = [];

    for (int i = 0; i < data.length; i++) {
      movies.add(
        MovieModel.fromJson(data[i]),
      );
    }
    return movies;
  }
}
