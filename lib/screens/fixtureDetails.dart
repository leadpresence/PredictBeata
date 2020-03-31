import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:predictbeta/constants.dart';

class FixtureDetails extends StatelessWidget {
  List x=[];
  @override
  Widget build(BuildContext context) {
     x=ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('${this.x[0]} VS  ${this.x[1]}'),
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
                  'Playing are ${this.x[0]} VS  ${this.x[1]}',
                  style: pBBigText,textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ));
  }
}
