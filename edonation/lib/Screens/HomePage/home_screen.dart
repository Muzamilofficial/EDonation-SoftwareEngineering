// ignore_for_file: prefer_const_constructors, unused_import, sort_child_properties_last

import 'package:edonation/Screens/Corona/corona.dart';
import 'package:edonation/Screens/InternationalDonations/International.dart';
import 'package:edonation/Screens/InternationalDonations/america.dart';
import 'package:edonation/Screens/InternationalDonations/saudi.dart';
import 'package:edonation/Screens/Kidney/kidney.dart';
import 'package:edonation/Screens/PakistanCharities/pakcharity.dart';
import 'package:edonation/Screens/Pin/pin.dart';
import 'package:edonation/Screens/Tuberculosis/Tuberculosis.dart';
import 'package:edonation/models/Auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';

import '../DomesticDonations/floodrelief.dart';
import '../InternationalDonations/india.dart';
import '../ProfileSetting/Profile.dart';
import '../WelcomeScreen/welcome_screen.dart';

class Home extends StatefulWidget {
  Home();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//   @override
  Future refresh() async {}
  int _selectedIndex = 0;
  final AuthService _auth = new AuthService();

  @override
  Widget build(BuildContext context) {
    final Header = Material(
      child: Column(
        children: <Widget>[
          Container(
            height: 140,
            decoration: BoxDecoration(
              // ignore: prefer_const_literals_to_create_immutables
              gradient: LinearGradient(colors: [
                // Color.fromARGB(255, 248, 119, 162),
                // Color.fromARGB(255, 241, 175, 131),
                Color.fromARGB(255, 241, 104, 150),
                Color.fromARGB(255, 253, 160, 98),
              ]),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  child: Container(
                    alignment: Alignment.center,
                    height: 65,
                    width: 180,
                    color: Colors.black.withOpacity(0.3),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 70,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 0.0),
                                width: 100,
                                alignment: Alignment.center,
                                child: Center(
                                  child: Text(
                                    'Keep It Going! Donating',
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Container(
                      alignment: Alignment.center,
                      height: 65,
                      width: 180,
                      color: Colors.black.withOpacity(0.3),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 70,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 20.0, right: 0.0),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                            8), // Border radius
                                        child: ClipOval(
                                          child: Image.asset(
                                            'assets/Images/splash.png',
                                            height: 50.0,
                                            width: 50.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 00.0, right: 0.0),
                                  width: 95,
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Text(
                                      'E DONATION',
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 0.0, right: .0),
                                  child: Icon(
                                    // <-- Icon
                                    Icons.keyboard_arrow_right_sharp,
                                    color: Colors.white.withOpacity(0.7),
                                    size: 24.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profile()));
                  },
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -60),
            child: Container(
              height: 40,
              width: 293,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                //color: Colors.black.withOpacity(0.3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5.0, right: 0.0),
                    height: 30,
                    width: 92,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //color: Colors.black.withOpacity(0.3),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      child: const Text(
                        'ACTIVITY',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 0.0),
                      height: 30,
                      //color: Colors.black,
                      width: 92,
                      alignment: Alignment.center,
                      child: const Text(
                        'RECORD',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => pin()));
                      print("tapped on container");
                    },
                  ),
                  InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 0.0),
                      height: 30,
                      //color: Colors.black,
                      width: 92,
                      alignment: Alignment.center,
                      child: const Text(
                        'LOGOUT',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0)), //this right here
                              child: Container(
                                height: 110,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Are You Want To Logout?',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.red),
                                            ),
                                          ),
                                          Container(
                                            child: SizedBox(
                                              height: 10,
                                            ),
                                          ),
                                          Container(
                                            child: ElevatedButton(
                                              child: Text('Logout'),
                                              onPressed: () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          WelcomeScreen()),
                                                );
                                                await GoogleSignIn().signOut();
                                                await _auth.signOut();
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });

                      print("tapped on container");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    final Activity = Material(
      child: Row(
        children: [
          InkWell(
            child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 0.0),
              child: Transform.translate(
                offset: const Offset(0, -38),
                child: Container(
                  height: 244,
                  width: 145,
                  alignment: Alignment.topLeft,
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 250,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.12),
                          blurRadius: 5.0,
                          spreadRadius: 1.1,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Image.asset('assets/Images/corona.png',
                                height: 30, width: 30),
                            const SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                "CORONA",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.fade,
                                softWrap: false,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Domestic',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'This Is Only for Pakistan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => corona()));
            },
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 0.0),
            child: Transform.translate(
              offset: const Offset(0, -40),
              child: Column(
                children: [
                  InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      height: 120,
                      width: 190,
                      alignment: Alignment.topLeft,
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        //height: 250,
                        //width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.12),
                              blurRadius: 5.0,
                              spreadRadius: 1.1,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Image.asset('assets/Images/kcancer.png',
                                    height: 30, width: 30),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    "KIDNEY CANCER",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    overflow: TextOverflow.fade,
                                    softWrap: false,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'This is Non Domestic',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => kidney()));
                    },
                  ),
                  InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      height: 120,
                      width: 190,
                      alignment: Alignment.topLeft,
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        //height: 250,
                        //width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.12),
                              blurRadius: 5.0,
                              spreadRadius: 1.1,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Image.asset(
                                    'assets/Images/—Pngtree—avoid smoking from tuberculosis_4378810.png',
                                    height: 50,
                                    width: 50),
                                const SizedBox(width: 0),
                                Expanded(
                                  child: Text(
                                    "TUBERCULOSIS",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    overflow: TextOverflow.fade,
                                    softWrap: false,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'This is only for Pakistan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Tuberculosis()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    final DiscoverSection = Material(
      child: Container(
        //height: 200,
        width: 350,
        //color: Colors.red,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 0,
              ),
              Container(
                height: 40,
                width: 350,
                //color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      width: 290,
                      //color: Colors.lightBlue,
                      child: Text(
                        'International Donations',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      //color: Colors.green,
                      child: InkWell(
                          child: Container(
                            child: Text(
                              'See all',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => International()));
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => WelcomeScreen()));
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                width: 350,
                height: 120,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    //height: 200,
                    // child: Text(
                    //   "Long text here which is longer than the container height",
                    //   style: TextStyle(fontSize: 20),
                    // )
                    child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              // ignore: prefer_const_literals_to_create_immutables
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueAccent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.12),
                                  blurRadius: 5.0,
                                  spreadRadius: 1.1,
                                ),
                              ],
                            ),
                            //color: Colors.orangeAccent,
                            height: 160,
                            width: 180,

                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  //color: Colors.black,
                                  height: 180,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10.0),
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        //color: Colors.pink,
                                        height: 40,
                                        width: 100,
                                        child: Text(
                                          'America',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            letterSpacing: 1.3,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 2.0),
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        //color: Colors.orange,
                                        height: 70,
                                        width: 100,
                                        child: Text(
                                          'Al Beruni',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            letterSpacing: 1.3,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  alignment: Alignment.topLeft,
                                  //color: Colors.red,
                                  height: 300,
                                  width: 80,
                                  child: Image.asset(
                                    'assets/Images/1.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => America()));
                          },
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              // ignore: prefer_const_literals_to_create_immutables
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 92, 155, 164),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.12),
                                  blurRadius: 5.0,
                                  spreadRadius: 1.1,
                                ),
                              ],
                            ),
                            //color: Colors.orangeAccent,
                            height: 160,
                            width: 180,

                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  //color: Colors.black,
                                  height: 180,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10.0),
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        //color: Colors.pink,
                                        height: 40,
                                        width: 100,
                                        child: Text(
                                          'India',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            letterSpacing: 1.3,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 2.0),
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        //color: Colors.orange,
                                        height: 70,
                                        width: 100,
                                        child: Text(
                                          'Being Human',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            letterSpacing: 1.3,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  alignment: Alignment.topLeft,
                                  //color: Colors.red,
                                  height: 300,
                                  width: 80,
                                  child: Image.asset(
                                    'assets/Images/2.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => India()));
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              // ignore: prefer_const_literals_to_create_immutables
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green.shade800,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.12),
                                  blurRadius: 5.0,
                                  spreadRadius: 1.1,
                                ),
                              ],
                            ),
                            //color: Colors.orangeAccent,
                            height: 160,
                            width: 180,

                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  //color: Colors.black,
                                  height: 180,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10.0),
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        //color: Colors.pink,
                                        height: 40,
                                        width: 100,
                                        child: Text(
                                          'Saudia',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            letterSpacing: 1.3,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 2.0),
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        //color: Colors.orange,
                                        height: 70,
                                        width: 100,
                                        child: Text(
                                          'Al Raiz Donations',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            letterSpacing: 1.3,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  alignment: Alignment.topLeft,
                                  //color: Colors.red,
                                  height: 300,
                                  width: 80,
                                  child: Image.asset(
                                    'assets/Images/3.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Saudi()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    final GetDonationPrograms = Material(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 350,
            //color: Colors.red,
            child: Row(
              children: [
                Container(
                  width: 290,
                  //color: Colors.lightBlue,
                  child: Text(
                    'Domestic Donations',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  //color: Colors.green,
                  child: InkWell(
                      child: Container(
                        child: Text(
                          'See all',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PakCharity()));
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => WelcomeScreen()));
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    final DomesticPattern = Material(
      child: Column(
        children: [
          InkWell(
            child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 0.0),
              child: Container(
                height: 244,
                width: 300,
                alignment: Alignment.topLeft,
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 5.0,
                        spreadRadius: 1.1,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Image.asset('assets/Images/4.png',
                              height: 30, width: 30),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Here Is Domestic Donations",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.fade,
                              softWrap: false,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Flood Relief',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(
                        'Always Help Humanity',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => FloRelief()));
            },
          ),
        ],
      ),
    );

    final Invitebutton = Material(
      child: Container(
        width: 300.0,
        child: Transform.translate(
          offset: const Offset(0, 0),
          child: FloatingActionButton.extended(
            label: Text('INVITE THE FRIENDS'),
            elevation: 0, // <-- Text
            //backgroundColor: Colors.black.withOpacity(0.5),
            backgroundColor: Colors.white.withOpacity(0.5),
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.grey, width: 0.5, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(50)),

            extendedTextStyle: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
            icon: Icon(
              // <-- Icon
              Icons.person_add,
              color: Colors.black,
              size: 24.0,
            ),
            onPressed: () {},
            heroTag: BoxShadow(
              color: Colors.transparent,
              spreadRadius: 7,
              blurRadius: 7,
              offset: Offset(3, 5),
            ),
          ),
        ),
      ),
    );
    final FooterText = Material(
      child: Transform.translate(
        offset: const Offset(0, 0),
        child: Container(
          //height: 230,
          width: 500,
          //color: Colors.red,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(50),
                child: Text(
                  'Help us get even better',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    final Feedbackbutton = Material(
      child: Container(
        width: 300.0,
        child: Transform.translate(
          offset: const Offset(0, -30),
          child: FloatingActionButton.extended(
            label: Text('GIVE FEEDBACK'),
            elevation: 0, // <-- Text
            //backgroundColor: Colors.black.withOpacity(0.5),
            backgroundColor: Colors.white.withOpacity(0.5),
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.grey, width: 0.5, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(50)),

            extendedTextStyle: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
            // icon: Icon(
            //   // <-- Icon
            //   Icons.person_add,
            //   color: Colors.black,
            //   size: 24.0,
            // ),
            onPressed: () {},
            heroTag: BoxShadow(
              color: Colors.transparent,
              spreadRadius: 7,
              blurRadius: 7,
              offset: Offset(3, 5),
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 0.0, right: 35.0),
            //padding: const EdgeInsets.only(left: 20.0, right: 0.0),
            alignment: Alignment.center,
            child: InkWell(
                child: Container(
                  child: ProfilePicture(
                    name: 'MuzamilKhan',
                    //name: FirebaseAuth.instance.currentUser!.email!,
                    radius: 16,
                    fontsize: 15,
                    random: true,
                    count: 2,
                    tooltip: true,
                    //role: 'ADMINISTRATOR',
                    img: (FirebaseAuth.instance.currentUser?.photoURL),
                    //img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
                  ),
                ),
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => WelcomeScreen()));
                }),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0.0, right: 10.0),
            //padding: const EdgeInsets.only(left: 20.0, right: 0.0),
            alignment: Alignment.center,
            child: Text(
              'Welcome To E Donation',
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
              )),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0.0, right: 5.0),
            child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.black54,
                  size: 33,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home()));
                }),
          ),
        ],
        backgroundColor: Colors.white,
        //centerTitle: true,
      ),
      bottomNavigationBar: GNav(
          gap: 8,
          iconSize: 30,
          color: Colors.grey[800],
          backgroundColor: Colors.white,
          rippleColor: Colors.grey,
          activeColor: Colors.pinkAccent,
          haptic: true, // haptic feedback
          hoverColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          tabs: const [
            GButton(
              icon: Icons.home,
              textColor: Colors.pinkAccent,
              iconColor: Colors.pinkAccent,
              text: 'Home',
            ),
            GButton(
              icon: Icons.bubble_chart,
              text: 'Domestic',
            ),
            GButton(
              icon: Icons.food_bank,
              text: 'Non Domestic',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
              if (_selectedIndex == 0) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
                print(index);
              }
              if (_selectedIndex == 1) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PakCharity()));
              }
              if (_selectedIndex == 2) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => International()));
              }
              print(index);
            });
          }),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                //child:(
                //padding: const EdgeInsets.all(16.0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Header,
                    Activity,
                    DiscoverSection,
                    GetDonationPrograms,
                    DomesticPattern,
                    SizedBox(
                      height: 40,
                    ),
                    Invitebutton,
                    FooterText,
                    Feedbackbutton,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Myupload {
//   FirebaseStorage _storage = FirebaseStorage.instance;
//   Future<void> uploadpic() async {
//     PickedFile? _image =
//         await ImagePicker.platform.pickImage(source: ImageSource.gallery);
//     var storagef = _storage.ref("organizations/h");
//     File a = new File(_image!.path);
//     var task = storagef.putFile(a);
//   }
// }
