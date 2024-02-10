import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/models/movie_model.dart';

class MovieCardDetails extends StatelessWidget {
  MovieCardDetails({super.key, required this.movies});

  MovieModel movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              movies.image,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            movies.name,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            softWrap: true,
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.calendar,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(movies.dateOfProduction),
              const SizedBox(width: 20),
              Icon(FontAwesomeIcons.eye, color: Colors.white, size: 20),
              SizedBox(
                width: 10,
              ),
              Text(
                movies.numberOfWatch.toString(),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(FontAwesomeIcons.star, color: Colors.yellow, size: 20),
              SizedBox(
                width: 10,
              ),
              Text(
                movies.rating,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(FontAwesomeIcons.clock, color: Colors.white, size: 20),
              SizedBox(
                width: 10,
              ),
              Text(
                movies.duration,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Text(
            movies.description,
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 25),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              movies.author,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
