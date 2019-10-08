import 'package:flutter/material.dart';
import 'package:flutter_oct/receipt3.dart';
import 'package:flutter_oct/receiptapp.dart';
import 'package:flutter_oct/second_receipt.dart';
import 'package:flutter_oct/sign_up.dart';
import 'package:flutter_oct/social_feeds.dart';
import 'package:flutter_oct/social_share.dart';
import 'package:flutter_oct/user_profile.dart';
import 'boardpass.dart';
import 'calculator.dart';
import 'cookingapp.dart';
import 'fashionapp.dart';
import 'find_flight.dart';
import 'fitness_app.dart';
import 'fruitapp.dart';
import 'ice_cream.dart';
import 'instagram.dart';
import 'lightapp.dart';
import 'minimal_music.dart';
import 'musicapp.dart';
import 'mypage.dart';

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
//      home: LightApp(),
//      home: SocialShare(),
//      home: UserProfile(),
//      home: FitnessApp(),
//      home: SignUp(),
//      home: Instagram(),
//      home: MyPage(),
//      home: CookingApp(),
//      home: ReceiptApp(),
//      home: ReceiptApp3(),
//      home: IceCream(),
//      home: MusicApp(),
      home: BoardingPass(),
    );
  }
}