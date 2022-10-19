import 'dart:math';

import 'package:flutter/material.dart';
import 'package:planets_animasion/modal.dart';
import 'package:planets_animasion/planet_datails.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  late AnimationController animationController;

  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 5),
        )..repeat();
  
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Treva"),
        actions: [Icon(Icons.search)],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height:1000,
                width: 500,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlanetDatils(
                            val: index,
                          ),
                        )),
                    child: SizedBox(
                      width: 800,
                      height: 170,
                      child:
                          Stack(alignment: Alignment.center, children: <Widget>[
                        Container(
                          height: 150,
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[300]),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 90,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${planet.Datailslist[index].Planetname}",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  const Text("Minkway Glaxey"),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        size: 15,
                                      ),
                                      Text(
                                        planet.Datailslist[index].PlanetKM,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      //  Icon(Icons.,size: 15,),
                                      Text(
                                        planet.Datailslist[index].PlanetMS,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 10,
                          child: AnimatedBuilder(
                            animation: animationController,builder: ((context, child) => Transform.rotate(angle:animationController.value * 2 * pi,child: Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(planet.Datailslist[index].image),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),)),

                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
