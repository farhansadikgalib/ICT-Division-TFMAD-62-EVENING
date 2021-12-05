import 'package:flutter/material.dart';
import 'package:registrationpage_evening/05-12-21%20Class%2034/firebaseWithUserRegistration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: FirebaseWithUserRegistration()
    );
  }
}

