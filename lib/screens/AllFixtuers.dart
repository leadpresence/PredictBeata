import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:predictbeta/screens/fixtureDetails.dart';
import '../Fixture.dart';

class AllFixtuers extends StatefulWidget {
  @override
  _AllFixtuersState createState() => _AllFixtuersState();
}

class _AllFixtuersState extends State<AllFixtuers> {
  final String url = 'https://reqres.in/api/users/';
  int index;
  List dt;
  Fixture fixture = new Fixture();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getPredictionData();
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
    fixture.home = '';
    fixture.away = '';
    fixture.logo2 = Icon(Icons.ac_unit);
    fixture.logo1 = Icon(Icons.whatshot);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Fixtures'),
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
        body: ListView.builder(
            itemCount: this.dt == null ? 0 : this.dt.length,
            itemBuilder: (BuildContext context, index) {
              return GestureDetector(
                  onTap: () {
                    //navigate the individual fixture page
                    print('You tapped number ' + index.toString());
                    Navigator.push(context,
                        MaterialPageRoute(
                        builder: (context) => FixtureDetails(),
                          settings: RouteSettings(
                            //take all the data in a list
                            arguments:[
                              this.fixture.home = dt[index]['first_name'],
                              this.fixture.home = dt[index]['last_name']
                            ],

                          )
                    )
                    );
                        //'fixtureDetails');
                  },
                  child: fixture.loadTeams(
                    this.fixture.home = dt[index]['first_name'],
                    this.fixture.away = dt[index]['last_name'],
                  ));
            }));
  }
}
