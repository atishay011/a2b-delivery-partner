import 'package:flutter/material.dart';
import 'package:a2b_delivery_partner/services/size_helper.dart';
import 'package:a2b_delivery_partner/services/Set_Location.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

void setupLocation()async{
Location currentLocation = Location();
await currentLocation.getLocation();
Navigator.pushReplacementNamed(context, '/wrapper');
}
  @override
  void initState(){
    super.initState();
    setupLocation();
  }

  @override
  Widget build(BuildContext context) {
    print(displayHeight(context));
    return Scaffold(
       backgroundColor: Colors.black,
      body : Padding(  
        padding : EdgeInsets.fromLTRB(0.0, 300.0*0.00115*displayHeight(context), 0.0, 0.0),
         child :  Center(
        child : Column(children: <Widget>[
            Text("a2b",
            style : TextStyle(
              fontSize: 80.0,
              fontFamily: 'Orbitron',
              color: Colors.white,
              letterSpacing: 4.0,
            )           
            ),
            SizedBox(height: 6.0*0.00115*displayHeight(context),),
            Text("Get anything delivered instantly!!",
            //not added a font, might add a font in future.
            style: TextStyle(
              color : Colors.white,
              fontWeight: FontWeight.bold
            ),
          )
        ],)
      ) 
      )
    );
  }
}