import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:core';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:predictbeta/screens/fixtureDetails.dart';
import '../Fixture.dart';
import '../PredictionService.dart';
import '../widgets/helpSheet.dart';

class AllFixtures extends StatefulWidget {
  @override
  _AllFixturesState createState() => _AllFixturesState();
}

class _AllFixturesState extends State<AllFixtures> {
  final String url = 'https://reqres.in/api/users/';
  int index;
  List dt=List();
  Fixture fixture;
  PredictionService predictionService;

  Widget helpActionSheet(BuildContext context){
    return Help();
  }
  more(){}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getPredictionData();
//    this.predictionService.getPredictionTeams()
//        .then((List<Map<String,dynamic>> expList){
//      expList.forEach((Map<String, dynamic> expMap){
//        dt.add(expMap);
//      });
//    }

//    );
  
  }

  //=============================================Fetch Data===================================================
  Future<String> getPredictionData() async {
    http.Response response = await http.get(Uri.encodeFull(url), headers: {
      "Accept": "application/json",
    });
    Map<String, dynamic> data = convert.jsonDecode(response.body);
    setState(() {
      data = convert.jsonDecode(response.body);
      this.dt = data['data']; // the list in the json res.
      print(dt);
    });
    return "Success";
  }


  //=============================================build screen==================================================

  @override
  Widget build(BuildContext context) {
    Icon l1 = Icon(Icons.ac_unit);
    Icon l2 = Icon(Icons.whatshot);
    return

      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Fixtures'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  showModalBottomSheet(context: context, builder: helpActionSheet,backgroundColor: Colors.transparent);
                },
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
        body: ListView.builder(
            itemCount: this.dt == null ? 0 : this.dt.length,
            itemBuilder: (BuildContext context, index) {
              return GestureDetector(
                  onTap: () {
                    //navigate the individual fixture page
                    print('You tapped number ' + index.toString());
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FixtureDetails(),
                            settings: RouteSettings(

                                //take all the data in a list
                                arguments: [
                                   dt[index]['first_name'],
                                  dt[index]['last_name'],
                                ])));
                    //'fixtureDetails');
                  },
                  child: new Fixture(dt[index]['first_name'],dt[index]['last_name'],l1, l2));
            })
      );
  }
}
