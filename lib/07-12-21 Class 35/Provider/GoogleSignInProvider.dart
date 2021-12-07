
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier{

  final googleSingIn = GoogleSignIn();

  bool _isSigningIn = false;

  GoogleSignInProvider(){
    _isSigningIn = false;
  }

  bool get isSigningIn => _isSigningIn;

  set isSigningIn(bool isSingingIn){
    _isSigningIn = isSigningIn;
    notifyListeners();
  }


  Future login() async{

    final user = await googleSingIn.signIn();
    if(user == null){
      isSigningIn = false;
      return;
    }else{
      final googleAuth = await user.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      isSigningIn = false;



    }



  }


  void logout()async{
    await googleSingIn.disconnect();
    FirebaseAuth.instance.signOut();

  }





}