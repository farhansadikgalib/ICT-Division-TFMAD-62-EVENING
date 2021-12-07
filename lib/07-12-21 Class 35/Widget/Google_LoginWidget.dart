import 'package:flutter/material.dart';

class GoogleLoginWidget extends StatefulWidget {
  const GoogleLoginWidget({Key? key}) : super(key: key);

  @override
  _GoogleLoginWidgetState createState() => _GoogleLoginWidgetState();
}

class _GoogleLoginWidgetState extends State<GoogleLoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Login",style: TextStyle(color: Colors.white),),






        ],


      ),




    );
  }
}
