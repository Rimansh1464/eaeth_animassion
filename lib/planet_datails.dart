import 'dart:math';

import 'package:flutter/material.dart';
import 'package:planets_animasion/modal.dart';

class PlanetDatils extends StatefulWidget {


   PlanetDatils({Key? key, required this.val}) : super(key: key);
  final val;
  @override

  State<PlanetDatils> createState() => _PlanetDatilsState();
}

class _PlanetDatilsState extends State<PlanetDatils> with TickerProviderStateMixin{
  @override
  late AnimationController animationController;

  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 780,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                    color: Colors.grey),
                child: Image.asset(
                  "asserts/iamge/photo-1566345984367-fa2ba5cedc17.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 200,
                left: 25,
                child: Container(
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey[500]),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 100),
                             Text(
                              "${planet.Datailslist[widget.val].Planetname}",
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text("Minkway Glaxey"),
                            const Divider(
                              height: 30,
                              thickness: 2,
                              endIndent: 50,
                              indent: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Icon(
                                  Icons.location_on,
                                  size: 15,
                                ),
                                Text(
                                  "${planet.Datailslist[widget.val].PlanetKM}",
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Icon(
                                  Icons.arrow_upward_sharp,
                                  size: 15,
                                ),
                                Text(
                                  "${planet.Datailslist[widget.val].PlanetMS}",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "OverView",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            Text(
                                "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In the English language, Mars is named for the Roman god of war. Mars is a terrestrial planet with a thin atmosphere, and has a crust primarily composed of elements similar to Earth's crust, as well as a core made of iron and nickel.")
                          ],
                        ),
                      ),
                    ),
                  ),

                ),
              Positioned(
                top: 140,
                left: 100,
                child: AnimatedBuilder(
                  builder:(context, child) => Transform.rotate(angle: animationController.value * 2 * pi,child: child,),
                  animation: animationController,
                  child: Container(
                    height: 140,
                    width: 140,
                    child: Image.asset("${planet.Datailslist[widget.val].image}"),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 700,
                left: 220,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey[500]),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.arrow_back),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Back")
                      ],
                    )),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
