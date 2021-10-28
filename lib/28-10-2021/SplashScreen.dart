import 'dart:async';

import 'package:flutter/material.dart';
import 'package:registrationpage_evening/28-10-2021/RegistrationPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Registrationpage()),
            (route) => false));
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.brown,

      body: Center(
        child: Column(


          children: [

            SizedBox(height: 30,),

            Text("Welcome To 7UP",style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.bold),),

            Spacer(),

            Image.network('https://scontent.fcgp7-1.fna.fbcdn.net/v/t1.18169-9/11138633_439706136208034_8759793609173901381_n.png?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=jhFZ2EzMz7sAX9bFw_E&_nc_ht=scontent.fcgp7-1.fna&oh=c37ed78f358c45d632e60b8189d54c4e&oe=61A12818'),

            Spacer(),

            CircularProgressIndicator(color: Colors.green,),
            SizedBox(height: 30,),






          ],

        ),
      ),



    );
  }
}
