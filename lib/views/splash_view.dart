import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_app/views/nav.dart';

class splashh extends StatefulWidget {
  const splashh({super.key});

  static String id = "splash_view";

  @override
  State<splashh> createState() => _splashhState();
}

class _splashhState extends State<splashh> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, Nav.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(height: 150, width: 150, 'assets/movie3.png'),
    ));
  }
}
