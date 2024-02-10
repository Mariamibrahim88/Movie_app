import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/views/movie_details.dart';

class MoviesCard extends StatelessWidget {
  MoviesCard({super.key, required this.movies});

  MovieModel movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  blurRadius: 20,
                  color: Colors.grey.withOpacity(.1),
                  spreadRadius: 0,
                  offset: Offset(5, 5))
            ]),
        width: double.infinity,
        height: 120,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, MovieDetails.id, arguments: movies.id);
          },
          child: Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.network(
                    movies.image,
                    height: 100,
                    width: 120,
                    fit: BoxFit.cover,

                    //product.image,
                  ),
                ),
                //Spacer(),
                const SizedBox(width: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      movies.name,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
                      //overflow: TextOverflow.visible,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
