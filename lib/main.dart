import 'package:flutter/material.dart';
import 'package:flutter_oct/social_feeds.dart';
import 'calculator.dart';
import 'fashionapp.dart';
import 'find_flight.dart';
import 'fruitapp.dart';
import 'lightapp.dart';
import 'minimal_music.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      home: Calculator(),
//      home: FruitApp(),
//      home: MinimalMusicApp(),
//      home: SocialFeedsPage(),
//      home: FindFlight(),
//      home: FahsionApp(),
      home: LightApp(),
    );
  }
}