import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:predictbeta/constants.dart';


class Login extends StatefulWidget {


  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool states=false;
  Color _disableColor=Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('PredictBeta'),
        actions: <Widget>[
        IconButton(
        onPressed: (){
          paystackIntegration();
        },
        padding: EdgeInsets.all(5.0),
        icon:Icon( Icons.monetization_on, color: Colors.blueAccent,)

    ),
    ]
    ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Center(

              child: Container(
                padding: EdgeInsets.all(25.0),
                constraints: BoxConstraints(minHeight: 50.0,minWidth: 40.0),
                child: Column(
                  children: <Widget>[
//                ListView(
//                  children: <Widget>[
                        TextField(decoration: InputDecoration(
                            icon: Icon(Icons.email ,color: Colors.blueAccent,),
                            labelText: 'Email/Phone Number',
                  hintText: 'Enter Your Email',
                            border: OutlineInputBorder()
                        ),),

                        pBSixeBoxVertical,
                        TextField(
                          onChanged: ( String value){_disableColor=Colors.blueAccent;},
                          decoration: InputDecoration(

                            icon: Icon(Icons.vpn_key,color: Colors.red,),
                            labelText: 'Password',
                            hintText: '*******',
                            border: OutlineInputBorder()
                        ),
                          obscureText: true,
                        ),
                    pBSixeBoxVertical,
                    RaisedButton(
                        color:_disableColor ,
                        onPressed: (){
                          _disableColor==Colors.grey?err():success();
                        },
                        child:Text('Login')
                    ),
                    pBSixeBoxVertical,

                    FlatButton(
                      onPressed: (){Navigator.pushNamed(context, 'register');},
                      child: Text(
                        'Do not Have An Account? Register'
                      ),
                    )
                    
                      ],
//                )

//              ],
                ),
              )
            )
          ],

            ),
      )
    )
         ;
  }
  void paystackIntegration(){
    print(
      'Loading PayStack'
    );
  }
  void err(){
    print('please agree to terms');
  }
  //To confirm all details are copltede
  void success(){
    //
    print('You are good thanks !');
    Navigator.pushNamed(context, 'allfixtures');
  }
}
