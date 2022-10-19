import 'package:flutter/cupertino.dart';

class planet {
  String Planetname;

  String PlanetKM;
  String PlanetMS;
  String image;

  planet({required this.Planetname, required this.PlanetKM, required this.PlanetMS, required this.image});
  static List<planet> Datailslist = [
    planet(Planetname:" Earth",  PlanetKM: "44.5", PlanetMS: "8.71 m/s", image: "asserts/iamge/earth.png"),
    planet(Planetname:" Mars",  PlanetKM: "54.5", PlanetMS: "3.71 m/s", image: "asserts/iamge/mars.png"),
    planet(Planetname:"moon",  PlanetKM: "22.5", PlanetMS: "6.31 m/s", image: "asserts/iamge/moon.png"),
    planet(Planetname:" Neptune",  PlanetKM: "22.5", PlanetMS: "2.71 m/s", image: "asserts/iamge/neptune.png"),
    planet(Planetname:" Mercury",  PlanetKM: "54.5", PlanetMS: "3.71 m/s", image: "asserts/iamge/mercury.png"),
  ];
}
