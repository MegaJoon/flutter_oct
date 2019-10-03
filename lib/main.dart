import 'package:flutter/material.dart';
//import 'package:flutter_oct/social_feeds.dart';
import 'calculator.dart';
import 'find_flight.dart';
import 'fruitapp.dart';
import 'minimal_music.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      home: Calculator(),
//      home: FindFlight(),
//      home: FruitApp(),
//      home: MinimalMusicApp(),
//      home: SocialFeedsPage(),
      home: Interior(),
    );
  }
}