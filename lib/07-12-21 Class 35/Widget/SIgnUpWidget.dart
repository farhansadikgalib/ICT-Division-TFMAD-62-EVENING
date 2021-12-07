import 'package:flutter/material.dart';
import 'package:registrationpage_evening/07-12-21%20Class%2035/Widget/GoogleSigningButtonWidget.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=> Stack(
    fit: StackFit.expand,
    children: [

      buildSignUP()


    ],


  );



  Widget buildSignUP() => Column(

    children: [

      Spacer(),
      Align(

        alignment: Alignment.centerLeft,
        child: Container(

          child: Text("Welcome To my app"),



        ),



      ),

      Spacer(),
      Google_SignInButtonWidget(),
      SizedBox(height: 15,),
      Text("Login To Continue"),

      Spacer()

    ],

  );


}
