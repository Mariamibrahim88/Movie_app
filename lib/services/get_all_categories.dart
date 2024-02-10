import 'package:movie_app/models/category_model.dart';

import '../helper/Api.dart';

class AllCategorieservices {
  Future<List<CategoryModel>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://movie-app-5wo8.onrender.com/categories');

    List<CategoryModel> categories = [];

    for (int i = 0; i < data.length; i++) {
      categories.add(
        CategoryModel.fromJson(data[i]),
      );
    }
    return categories;
  }
}
