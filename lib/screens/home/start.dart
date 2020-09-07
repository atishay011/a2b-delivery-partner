import 'package:flutter/material.dart';
import 'package:a2b_delivery_partner/services/size_helper.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  bool pressAttention = false;
    

    

  @override
  Widget build(BuildContext context) {
    double screenHeight = displayHeight(context);
    double screenWidth = displayWidth(context);
    return SafeArea(child :  Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
      child :Padding(padding : EdgeInsets.fromLTRB(0.0, 0.15*screenHeight, 0.0, 0.0) ,
      child :Center(        
             child : Column( 
               children : <Widget>[
               Text("a2b",
            style : TextStyle(
              fontSize: 60.0,
              fontFamily: 'Orbitron',
              color: Colors.white,
              letterSpacing: 4.0,
            )           
            ),
            SizedBox(height: 0.007*screenHeight),
            Text("Delivery Partner",
            //not added a font, might add a font in future.
            style: TextStyle(
              color : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        Padding(padding: EdgeInsets.fromLTRB(0.03*screenWidth, 0.10*screenHeight, 0.03*screenWidth, 0),
        child: Container(
          width : double.infinity,
          height : 0.25*screenHeight,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children : <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.02*screenHeight, 0.65*screenWidth, 0.0),
                child: Text("Enter DP ID",
              style: TextStyle(
                letterSpacing : 1.1
              ),
                ),               
              ),
              Padding( 
              padding: EdgeInsets.symmetric(vertical : 0.01*screenHeight , horizontal: 0.01*screenWidth),
              child : SizedBox(
              height: 0.05*screenHeight,
              width: 0.95*screenWidth,
             child : TextFormField(
               decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
              )
              )
              ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical : 0.02*screenHeight , horizontal: 0.01*screenWidth),
              child: SizedBox(
                width : double.infinity,
                height : 0.0583*screenHeight,
              child : RaisedButton(onPressed: (){},
              color: Colors.grey[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text("Continue",
                style: TextStyle(
                  color : Colors.white,
                  fontWeight : FontWeight.bold
                )),
              ),
              )
              ),
              ]
            ),
        ),),
        Padding(padding: EdgeInsets.only(top : 0.11*screenHeight),
           child :  GestureDetector(
         onTap: ()async{
          setState(() {   
           pressAttention = !pressAttention;        
          });
          await  Navigator.pushNamed(context, '/sign_up');
           setState(() {   
           pressAttention = !pressAttention;        
          });
        },
    
      child :  Text("Want to become a delivery partner?",
        style : TextStyle(
          color : pressAttention ? Colors.blue[800] : Colors.blue,
          fontWeight : FontWeight.bold,
         fontSize: 18.0,
        )
        ),      
        ),
        
        )
               ]
             )
          )
      ),
            )
    )   
    );
  }
}