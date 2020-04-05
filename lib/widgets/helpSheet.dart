import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Help extends StatelessWidget {
 var help=''''There are many variations of passages of Lorem Ipsum available, but the majority
         have suffered alteration in some form, by injected humour, or randomised words which don not
                    look even slightly believable. If you are going to use a passage of Lorem Ipsum,
                    you need to be sure there isn't anything embarrassing hidden in the middle of text.
                     All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as
                    necessary, making this the first true generator on the Internet. It uses a dictionary
                    of over 200 Latin words, combined with a handful of model sentence structures, to generate
                    Lorem Ipsum which looks reasonable. The '
        generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.''';
  void bottomSheet()=>showBottomSheet(context:null, builder: null);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
     child: Container(
       padding: EdgeInsets.only(top: 30.0),

       decoration: BoxDecoration(
           color: Theme.of(context).primaryColor,
           borderRadius: BorderRadius.only(
           topRight: Radius.circular(20.0),
           topLeft: Radius.circular(20.0)
         )
       ),
       child: Column(crossAxisAlignment: CrossAxisAlignment.center,

           children: <Widget>[
             Text('Read Help Documents..', style: TextStyle(color: Colors.blueAccent,fontSize: 16.0,fontStyle: FontStyle.italic),)
           ],
       ),
     ),
      );

  }

}
