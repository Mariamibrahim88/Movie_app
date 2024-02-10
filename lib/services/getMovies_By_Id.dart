import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/models/movie_model.dart';

import '../helper/Api.dart';

class AllmoviesById {
  Future<MovieModel> getMovies({required String id}) async {
    dynamic data =
        await Api().get(url: 'https://movie-app-5wo8.onrender.com/movies/$id');

    final movie = MovieModel.fromJson(data);

    return movie;
    //print(data);
  }
}
