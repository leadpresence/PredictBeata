import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget{

Widget appBartitle;
Function helpActionFunction;
Function moreActionFunction;
IconData moreIcon;
Widget bodyWidget;


CustomScaffold({
  this.appBartitle, this.helpActionFunction,
  this.moreActionFunction, this.moreIcon,
  this.bodyWidget
});

@override
Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    centerTitle: true,
    title: appBartitle,
    actions: <Widget>[
      IconButton(
          onPressed: helpActionFunction,
          padding: EdgeInsets.all(5.0),
          icon: Icon(
            Icons.help,
            color: Colors.blueAccent,
          )),
      IconButton(
          onPressed: moreActionFunction,
          padding: EdgeInsets.all(5.0),
          icon: Icon(
            Icons.more_vert,
            color: Colors.blueAccent,
          )),
    ],
  )
  ,
  body:bodyWidget

  );
}
}