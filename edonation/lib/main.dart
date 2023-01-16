// ignore_for_file: unused_import, prefer_const_constructors



import 'package:edonation/Screens/HomePage/home_screen.dart';
import 'package:edonation/Screens/InternationalDonations/International.dart';
import 'package:edonation/Screens/InternationalDonations/america.dart';
import 'package:edonation/Screens/InternationalDonations/india.dart';
import 'package:edonation/Screens/Splash/splash_screen.dart';
import 'package:edonation/Screens/WelcomeScreen/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Corona/corona.dart';
import 'Screens/DomesticDonations/floodrelief.dart';
import 'Screens/InternationalDonations/dubai.dart';
import 'Screens/InternationalDonations/saudi.dart';
import 'Screens/Kidney/kidney.dart';
import 'Screens/PakistanCharities/aghakhan.dart';
import 'Screens/PakistanCharities/alkhidmat.dart';
import 'Screens/PakistanCharities/aurat.dart';
import 'Screens/PakistanCharities/chhipa.dart';
import 'Screens/PakistanCharities/edhi.dart';
import 'Screens/PakistanCharities/jdc.dart';
import 'Screens/PakistanCharities/pakcharity.dart';
import 'Screens/Pin/pin.dart';
import 'Screens/ProfileSetting/Profile.dart';
import 'Screens/Record/record.dart';
import 'Screens/Tuberculosis/Tuberculosis.dart';
import 'models/Auth.dart';
import 'models/FirebaseUser.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.black,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.black,
            textTheme: ButtonTextTheme.primary,
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
          ),
          fontFamily: 'Georgia',
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
