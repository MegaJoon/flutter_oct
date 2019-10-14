import 'package:flutter/material.dart';
import 'package:flutter_oct/paint_test.dart';
import 'package:flutter_oct/receipt3.dart';
import 'package:flutter_oct/receiptapp.dart';
import 'package:flutter_oct/requests.dart';
import 'package:flutter_oct/reservation.dart';
import 'package:flutter_oct/second_receipt.dart';
import 'package:flutter_oct/service_appointment.dart';
import 'package:flutter_oct/sign_up.dart';
import 'package:flutter_oct/sleep_dashboard.dart';
import 'package:flutter_oct/social_feeds.dart';
import 'package:flutter_oct/social_share.dart';
import 'package:flutter_oct/plant.dart';
import 'package:flutter_oct/task.dart';
import 'package:flutter_oct/user_profile.dart';
import 'boardpass.dart';
import 'calculator.dart';
import 'categories.dart';
import 'checkout.dart';
import 'cookingapp.dart';
import 'fashionapp.dart';
import 'find_flight.dart';
import 'fitness.dart';
import 'fitness_app.dart';
import 'fruitapp.dart';
import 'giftcard.dart';
import 'ice_cream.dart';
import 'instagram.dart';
import 'lightapp.dart';
import 'mindfulness.dart';
import 'minimal_music.dart';
import 'music_festival.dart';
import 'musicapp.dart';
import 'mypage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
//      home: BoardingPass(),
//      home: Categories(),
//      home: MusicFestival(),
//      home: Requests(),
//      home: CheckOut(),
//      home: GiftCard(),
//      home: ServiceAppointment(),
//      home: Mindfulness(),
//      home: SleepDashboard(),
//      home: PaintTest(),
//      home: Fitness(),
//      home: Plant(),
      home: Reservation(),
    );
  }
}