import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:registrationpage_evening/07-12-21%20Class%2035/Provider/GoogleSignInProvider.dart';

class Google_SignInButtonWidget extends StatefulWidget {
  const Google_SignInButtonWidget({Key? key}) : super(key: key);

  @override
  _Google_SignInButtonWidgetState createState() => _Google_SignInButtonWidgetState();
}

class _Google_SignInButtonWidgetState extends State<Google_SignInButtonWidget> {
  @override
  Widget build(BuildContext context) => Container(
    child: OutlineButton.icon(onPressed: (){
      final provider = Provider.of<GoogleSignInProvider> (context ,listen: false);
      provider.login();
    }, icon: FaIcon(FontAwesomeIcons.google,color: Colors.green,), label: Text("SIgn In With Google"),shape: StadiumBorder(),),


  );
}

