import 'package:a2b_delivery_partner/screens/home/start.dart';
import 'package:a2b_delivery_partner/screens/intermediate/loading.dart';
import 'package:a2b_delivery_partner/screens/intermediate/sign-up.dart';
import 'package:a2b_delivery_partner/screens/wrapper.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    
    initialRoute: '/',
    routes: {
          '/' : (context){return Loading();},
          '/home'  : (context){return Start();},
          '/wrapper'  : (context){return Wrapper(); },
        //  '/sign_up' : (context){return (); }

    },
  )
);