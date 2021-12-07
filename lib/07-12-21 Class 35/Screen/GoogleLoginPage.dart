import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registrationpage_evening/07-12-21%20Class%2035/Provider/GoogleSignInProvider.dart';
import 'package:registrationpage_evening/07-12-21%20Class%2035/Widget/SIgnUpWidget.dart';

class GoogleLoginWithProviderPage extends StatefulWidget {
  const GoogleLoginWithProviderPage({Key? key}) : super(key: key);

  @override
  _GoogleLoginWithProviderPageState createState() => _GoogleLoginWithProviderPageState();
}

class _GoogleLoginWithProviderPageState extends State<GoogleLoginWithProviderPage> {



@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp();


  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          final provider = Provider.of<GoogleSignInProvider>(context);

          if (provider.isSigningIn) {
            return buildLoading();
          }  else {
            return SignUpWidget();
          }
        },
      ),
    ),
  );

  Widget buildLoading() => Stack(
    fit: StackFit.expand,
    children: [
      Center(child: CircularProgressIndicator()),
    ],
  );


}