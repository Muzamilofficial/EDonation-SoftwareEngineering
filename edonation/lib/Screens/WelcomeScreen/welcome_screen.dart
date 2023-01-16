// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_new

import 'package:edonation/Screens/login_with_facebook.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../Wrapper/wrapper_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    final Header = Material(
      child: Container(
        color: Colors.blue.shade50,
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/Images/vecteezy_sponsors-humanitarian-aid-and-solidarity-tiny-male-and_7500278.jpg',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Welcome!',
                style: GoogleFonts.robotoSerif(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              child: Text(
                'Join with us & Help Humanity',
                style: GoogleFonts.notoSerif(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              child: FloatingActionButton.extended(
                label: Text('SIGN UP WITH FACEBOOK'),
                elevation: 0,
                backgroundColor: Colors.blue.withOpacity(0.5),
                foregroundColor: Colors.white,
                extendedTextStyle: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                icon: Icon(
                  Icons.facebook,
                  size: 24.0,
                ),
                //onPressed: () {},
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginWithFacebook()));
                },
                heroTag: BoxShadow(
                  color: Colors.transparent,
                  spreadRadius: 7,
                  blurRadius: 7,
                  offset: Offset(3, 5),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: FloatingActionButton.extended(
                label: Text('SIGN UP WITH Google'),
                elevation: 0,
                backgroundColor: Colors.red.withOpacity(0.5),
                foregroundColor: Colors.white,
                extendedTextStyle: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                icon: Icon(
                  Icons.mail,
                  size: 24.0,
                ),
                onPressed: () async {
                  //signInWithGoogle();

                  GoogleSignInAccount? googleUser =
                      await GoogleSignIn().signIn();
                  GoogleSignInAuthentication? googleAuth =
                      await googleUser?.authentication;

                  AuthCredential credential = GoogleAuthProvider.credential(
                      accessToken: googleAuth?.accessToken,
                      idToken: googleAuth?.idToken);
                  UserCredential userCredential = await FirebaseAuth.instance
                      .signInWithCredential(credential);
                  debugPrint(userCredential.user?.displayName);

                  if (userCredential.user != null) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Wrapper()));
                  }
                },
                heroTag: BoxShadow(
                  color: Colors.transparent,
                  spreadRadius: 7,
                  blurRadius: 7,
                  offset: Offset(3, 5),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: new GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Wrapper()),
                  // );
                },
                child: Container(
                  child: Text(
                    'Already Have Account ?',
                    style: GoogleFonts.robotoSerif(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: FloatingActionButton.extended(
                label: Text('GET STARTED'),
                elevation: 0,
                backgroundColor: Colors.black.withOpacity(0.5),
                foregroundColor: Colors.white,
                extendedTextStyle: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                // icon: Icon(
                //   Icons.mail,
                //   size: 24.0,
                // ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Wrapper()),
                  );
                },
                heroTag: BoxShadow(
                  color: Colors.transparent,
                  spreadRadius: 7,
                  blurRadius: 7,
                  offset: Offset(3, 5),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              child: Column(
                children: <Widget>[
                  Header,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
