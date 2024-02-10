import 'package:flutter/material.dart';
import 'package:movie_app/models/category_model.dart';
import 'package:movie_app/services/get_all_categories.dart';

import '../widgets/category_card.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  static String id = "categories_view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Center(child: const Text('Categories')),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 70),
        child: FutureBuilder<List<CategoryModel>>(
          future: AllCategorieservices().getAllCategories(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<CategoryModel> categories = snapshot.data!;
              return GridView.builder(
                  itemCount: categories.length,
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.3,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryCard(
                        category: categories[index]); //product from customCard
                  });
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.grey),
              ));
            }
          },
        ),
      ),
    );
  }
}
