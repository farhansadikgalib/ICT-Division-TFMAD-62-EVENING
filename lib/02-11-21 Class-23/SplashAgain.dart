import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:registrationpage_evening/02-11-21%20Class-23/RegistrationUI.dart';

class SplashPageAgain extends StatefulWidget {
  const SplashPageAgain({Key? key}) : super(key: key);

  @override
  _SplashPageAgainState createState() => _SplashPageAgainState();
}

class _SplashPageAgainState extends State<SplashPageAgain> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 20),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => RegistrationUI()),
            (route) => false));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,

      body: Center(
        child: Column(

          children: [

            SizedBox(height: 50,),

            Image.network('http://t2.gstatic.com/images?q=tbn:ANd9GcTotCbOIUt9xNehNqt4yAd8x19i3mo0Of_xccsc6V2KBh7j2W7B'),

            SizedBox(height: 30,),

            Text("Welcom TO AIRBNB"),

            SizedBox(height: 50,),

            // CircularProgressIndicator(color: Colors.redAccent,),

          SpinKitFoldingCube(color: Colors.red,),
            SizedBox(height: 50,),




          ],

        ),
      ),



    );
  }
}
