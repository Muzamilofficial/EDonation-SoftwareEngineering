// ignore_for_file: prefer_const_constructors, unused_import, sort_child_properties_last

import 'package:edonation/Screens/HomePage/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:image_picker/image_picker.dart';

import '../InternationalDonations/International.dart';
import '../PakistanCharities/pakcharity.dart';

class profile extends StatefulWidget {
  profile();

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

int _selectedIndex=5;

//   @override
  Future refresh() async {}

  @override
  Widget build(BuildContext context) {
    final Header = Material(
      child: Column(
        children: <Widget>[
          Container(
            //height: 140,
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
                                margin:
                                    const EdgeInsets.only(left: 0.0, right: .0),
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
              ],
            ),
          ),
        ],
      ),
    );
    final Activity = Material(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 0.0),
            child: Transform.translate(
              offset: const Offset(0, -38),
              child: Container(
                height: 244,
                width: 340,
                alignment: Alignment.topLeft,
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  height: 250,
                  width: 340,
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
                          ProfilePicture(
                            name: FirebaseAuth.instance.currentUser!.email!,
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
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              FirebaseAuth.instance.currentUser!.email!,
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
                        'E Donation User',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'This Is Beta version so you cant update profile right now',
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
        ],
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
                onPressed: () {}),
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
              //textColor: Colors.pinkAccent,
              //iconColor: Colors.pinkAccent,
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => PakCharity()));
              }
              if (_selectedIndex == 2) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => International()));
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
                    SizedBox(
                      height: 50,
                    ),
                    Activity,
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
