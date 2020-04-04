import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart' as validator;
import '../constants.dart';



class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool states=false;
  Color _disableColor=Colors.grey;
  final requiredValidator = validator.RequiredValidator(errorText: 'this field is required');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PredictBeta'),

        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
//            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Center(

                  child: Container(
                    padding: EdgeInsets.all(25.0),
                    constraints: BoxConstraints(minHeight: 50.0,minWidth: 40.0),
                    child: Form(
                      autovalidate: true,
                      child: Column(
                        children: <Widget>[

                          TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.phone_iphone ,color: Colors.orange,),
                              labelText: 'Mobile Number',
                            hintText: 'Enter Mobile Number',
                              border: OutlineInputBorder()
                          ),keyboardType:TextInputType.phone ,
                            validator: requiredValidator  ,
                          ),

                          pBSixeBoxVertical,
                          TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.email ,color: Colors.blueAccent,),
                              labelText: 'Email',
                               hintText: 'Enter Your Email',
                              border: OutlineInputBorder(),
                          ),keyboardType:TextInputType.emailAddress ,
                            validator: validator.EmailValidator(errorText: "enter a valid Email"),

                          ),

                          pBSixeBoxVertical,

                              TextFormField(decoration: InputDecoration(
                                  icon: Icon(Icons.vpn_key,color: Colors.red,),
                                  labelText: 'Password',

                                  border: OutlineInputBorder()
                              ),
                                obscureText: true,
                              ),
                          pBSixeBoxVertical,


                              TextField(decoration: InputDecoration(
                                  icon: Icon(Icons.vpn_key,color: Colors.red,),

                                  labelText: 'Confirm Password',
                                  border: OutlineInputBorder()
                              ),keyboardType:TextInputType.text ,

                              ),

                          pBSixeBoxVertical,

                          CheckboxListTile(
                            secondary: Text('Agree to the Privacy Policy and Tearms of service',style: pBSmallText),
                            value:states,
                            selected: states,
                            onChanged:  (bool state){
                              setState(() {
                                states=state?true:false;
                              _disableColor=state?Colors.blueAccent:Colors.grey;
                            });},
                          ),
                          pBSixeBoxVertical,
                              RaisedButton(
                                color:_disableColor ,
                                onPressed: (){
                                 _disableColor==Colors.grey?err():success();
                                },
                                child:Text('Submit')
                              ),
                          pBSixeBoxVertical,
                          FlatButton(
                            onPressed: (){
                              setState(() {
                                Navigator.pushNamed(context, 'login');
                              });
                            },
                            child: Text("Already Have An account? Login",style: pBSmallText,),
                          )

                        ],

                      ),
                    ),
                  )
              )
            ],

          ),
        )
    );

  }

  //To output an error when something is wrong

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
