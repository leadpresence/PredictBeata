import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:predictbeta/constants.dart';
import 'customscaffold.dart';


class Welcome extends StatefulWidget{
  _WelcomeState createState()=>_WelcomeState();
}

class _WelcomeState extends State<Welcome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 90.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 8.0),

                    child: Text(
                      'PredictBeta',
                      style: TextStyle(
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w500,
                        fontSize: 30.0,
                      ),
                    ),
//                    color: Colors.white,
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0)),
                    ),
                  ),
                  SizedBox(height: 100.0),
                  Container(
                    child: Text(
                      'Make Better Predictions Anywhere, Anytime, Now...',
                      style: TextStyle(
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w500,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 90.0),
                  Container(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        children: <Widget>[
                          _LoginButton(),
                          SizedBox(
                            width: 20.0,
                          ),
                         _Register(),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/welcomeFootballer.png',
          ),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.2), BlendMode.dstATop),
        )),
      ),
    );
  }


}



//Login button
class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: FlatButton(
          onPressed:(){
            Navigator.pushNamed(context,'login');

          } ,
          child: Text(
            'Login',
            style: TextStyle(
                letterSpacing: 3.0,
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        height: 40,
        width: 150,
        decoration: BoxDecoration(
          border:
              Border.all(color: Colors.blueAccent, style: BorderStyle.solid),
//                                color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }
}

class _Register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Expanded(
  child: Container(
  padding: EdgeInsets.all(5.0),

  child: FlatButton(
  onPressed: () {
    Navigator.pushNamed(context, 'register');

  },
  child: Text(
  'Register',
  style: TextStyle(
  letterSpacing: 3.0,
  fontWeight: FontWeight.w500,
  fontSize: 18.0,
  color: Colors.blueAccent),
  textAlign: TextAlign.center,
  ),
  ),

  height: 40,
  width: 150,
  decoration: BoxDecoration(
  border: Border.all(
  color: Colors.blueAccent,
  style: BorderStyle.solid),
  borderRadius: BorderRadius.all(
  Radius.circular(30.0),
  ),
  ),
  )
  );
}

}
