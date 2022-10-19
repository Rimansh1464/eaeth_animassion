import 'package:flutter/material.dart';
import 'package:planets_animasion/planet_datails.dart';

import 'homepage.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => HomePage(),
      'planetDatils': (context) => PlanetDatils(val: null,),
    },
  ));
}
