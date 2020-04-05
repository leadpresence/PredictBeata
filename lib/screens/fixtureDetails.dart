import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:predictbeta/constants.dart';

class FixtureDetails extends StatelessWidget {
  List matchDetails=[];
  @override
  Widget build(BuildContext context) {
    //takes incoming data

    matchDetails=ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('${this.matchDetails[0]} VS  ${this.matchDetails[1]}'),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                padding: EdgeInsets.all(5.0),
                icon: Icon(
                  Icons.help,
                  color: Colors.blueAccent,
                )),
            IconButton(
                onPressed: () {},
                padding: EdgeInsets.all(5.0),
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.blueAccent,
                )),
          ],
        ),
        body: Container(
          child: SafeArea(
            child: ListView(
              children: <Widget>[
                Text(
                  //display items byu index
                  'Playing are ${this.matchDetails[0]} VS  ${this.matchDetails[1]}',
                  style: pBBigText,textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ));
  }
}
