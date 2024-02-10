import 'package:flutter/material.dart';
import 'package:movie_app/models/category_model.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/views/movies_view.dart';

import '../views/movies_view_of_category.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    required this.category,
    super.key,
  });
  CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        //height: 150,
        //width: 150,
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(2),
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 0,
                offset: Offset(6, 6))
          ],
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, MoviesViewOfCategory.id,
                arguments: category.id);
          },
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.network(
                        category.image,
                        //width: 100,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        category.name,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                  ]),
            ),
          ),
        ),
      )
    ]);
  }
}
