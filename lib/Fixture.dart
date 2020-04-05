import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
* this class models the view of individual
* match fixture, it holds no data
* To see fixture data view the fixturemodel.dart file.....
* */


class Fixture  extends StatelessWidget {
  String home;
  String away;
  String versus = 'VS';
  Widget logo1;
  Widget logo2;
  final Widget spaceVertical = SizedBox(height: 10.0,);
  final Widget spaceHorizontal = SizedBox(width: 10.0,);


  Fixture(this.home, this.away,this.logo1, this.logo2,);
@override
  Widget build(BuildContext context) {
//@protected
//  _getTeams(){
//    home=this.home;
//    away=this.away;
//
//
//    Widget a=

    return Column(
      children: <Widget>[
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Expanded(
                child: Icon(Icons.flag, color: Colors.orange,),
              ),
              Expanded(child: Text(home),
              ),
              spaceHorizontal,

              Expanded(child: Text(versus, textAlign: TextAlign.center,),),
              spaceHorizontal,

              Expanded(child: Text(away),
              ),
              Expanded(
                child: Icon(Icons.whatshot, color: Colors.red),
              ),


            ],
          ),


        ),
        Divider()

      ],
    );


  }
}//class fixture



















  /*
  * To list and provide fixtures names and logo to views
  *
  * We can make loadTeam have onTap function and
  * have logo parameters for each competing team
  *
  loadTeams(String teamA, String teamB) {
    teamA = this.home;
    teamB = this.away;

    return Column(
      children: <Widget>[
        _getTeams(),
        Divider()
      ],
    );
  }
  * */


/*
{
   1 item   "api":{
      2 items      "results":1      "predictions":[
         1 item


0:         {
            9 items            "match_winner":"1"            "under_over":NULL            "goals_home":"-3.5"            "goals_away":"-1.5"            "advice":"Winner : Paris Saint Germain"            "winning_percent":{
               3 items               "home":"50%"               "draws":"50%"               "away":"0%"
            }            "teams":{
               2 items               "home":{
                  "..."
               }               5 items               "away":{
                  5 items                  "team_id":95                  "team_name":"Strasbourg"                  "last_5_matches":{
                     7 items                     "forme":"25%"                     "att":"21%"                     "def":"64%"                     "goals":3                     "goals_avg":0.75                     "goals_against":5                     "goals_against_avg":1.25
                  }                  "all_last_matches":{
                     3 items                     "matchs":{
                        4 items                        "matchsPlayed":{
                           3 items                           "home":3                           "away":1                           "total":4
                        }                        "wins":{
                           3 items                           "home":0                           "away":0                           "total":0
                        }                        "draws":{
                           3 items                           "home":2                           "away":1                           "total":3
                        }                        "loses":{
                           3 items                           "home":1                           "away":0                           "total":1
                        }
                     }                     "goals":{
                        2 items                        "goalsFor":{
                           3 items                           "home":3                           "away":0                           "total":3
                        }                        "goalsAgainst":{
                           3 items                           "home":5                           "away":0                           "total":5
                        }
                     }                     "goalsAvg":{
                        "..."
                     }                     2 items
                  }                  "last_h2h":{
                     4 items                     "played":{
                        3 items                        "home":3                        "away":4                        "total":7
                     }                     "wins":{
                        3 items                        "home":1                        "away":0                        "total":1
                     }                     "draws":{
                        3 items                        "home":1                        "away":1                        "total":2
                     }                     "loses":{
                        3 items                        "home":1                        "away":3                        "total":4
                     }
                  }
               }
            }            "h2h":[
               "..."
            ]            6 items            "comparison":{
               6 items               "forme":{
                  2 items                  "home":"75%"                  "away":"25%"
               }               "att":{
                  2 items                  "home":"77%"                  "away":"23%"
               }               "def":{
                  2 items                  "home":"71%"                  "away":"29%"
               }               "fish_law":{
                  2 items                  "home":"0%"                  "away":"0%"
               }               "h2h":{
                  2 items                  "home":"85%"                  "away":"15%"
               }               "goals_h2h":{
                  2 items                  "home":"67%"                  "away":"33%"
               }
            }
         }
      ]
   }
}*/



