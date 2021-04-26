import 'package:flutter/material.dart';

import 'city_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List cities = [
    {
      'name': 'Paris',
      'image': 'assets/images/paris.jpg',
    },
    {
      'name': 'Lyon',
      'image': 'assets/images/lyon.jpg',
    },
    {
      'name': 'Nice',
      'image': 'assets/images/nice.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    cities.map((city) => print(city));
    cities.

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Dyma Trip'),
        actions: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: cities
              .map((city) => CityCard(name: city['name'], image: city['image']))
              .toList(),
        ),
      ),
    );
  }
}