import 'package:flutter/material.dart';
import 'package:predictbeta/screens/AllFixtuers.dart';
import 'package:predictbeta/screens/fixtureDetails.dart';
import './screens/login.dart';
import './screens/register.dart';

void main(){runApp(PredictBeta());}


class PredictBeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
     home: Login(),
      routes: <String, WidgetBuilder>{
        'register': (context)=> Register(),
        'allfixtures':(context)=>AllFixtuers(),
        'fixtureDetails':(context)=>FixtureDetails(),

      },
    );
  }
}
