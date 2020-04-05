import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'Fixture.dart';


class PredictionService{
  List dt=[];
  var data;
  static const url='https://reqres.in/api/users/';
//  Fixture _fixture= new Fixture();
//  _fixture.
//  _fixture.home = '';
//  _fixture.away = '';
//  _fixture.logo2 = Icon(Icons.ac_unit);
//  _fixture.logo1 = Icon(Icons.whatshot);
//
//  Future<String> getPredictionData() async {
//    http.Response response = await http.get(Uri.encodeFull(url), headers: {
//      "Accept": "application/json",
//    });
//    Map<String, dynamic> data = convert.jsonDecode(response.body);
//
//    setState(() {
//      data = convert.jsonDecode(response.body);
//      this.dt = data['data']; // the list in the json res.
//      print(dt);
//    });
//    return "Success";
//  }
  Future  <List<Map<String ,dynamic>>> getPredictionTeams()  async {

    try {
      http.Response response = await http.get(url);
      Map<String, dynamic> body = json.decode(response.body);
      this.data = body['data'];
      this.dt = data;
      List teammNames = [];
//      for (var teamPair in data) {
//        teammNames.add(new Fixture(
//            data['first_name'],data['first_name'],
//            Icon(Icons.ac_unit),Icon(Icons.whatshot)
//        ));
//      }
      return this.data;
    } catch (e) {}
    return null;
  }



}


