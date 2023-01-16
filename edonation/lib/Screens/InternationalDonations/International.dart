// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:edonation/Screens/InternationalDonations/america.dart';
import 'package:edonation/Screens/InternationalDonations/dubai.dart';
import 'package:edonation/Screens/InternationalDonations/india.dart';
import 'package:edonation/Screens/InternationalDonations/saudi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../HomePage/home_screen.dart';
import '../PakistanCharities/pakcharity.dart';

class International extends StatefulWidget {
  International();

  @override
  State<International> createState() => _InternationalState();
}

class _InternationalState extends State<International> {
  int _selectedIndex = 2;
  //final AuthService _auth = new AuthService();
  Future refresh() async {}

  @override
  Widget build(BuildContext context) {
    final Header = Material(
      child: Column(
        children: [
          Container(
            height: 60,
            //color: Colors.red,
            alignment: Alignment.center,
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
              children: [
                Container(
                    child: InkWell(
                  child:
                      Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
                  onTap: () {
                    //action code when clicked
                    print("The icon is clicked");
                  },
                )),
                SizedBox(width: 85),
                Container(
                  child: Text(
                    'International',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 300,
            //color: Colors.red,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 5.0, right: 0.0),
            //padding: const EdgeInsets.only(left: 20.0, right: 0.0),
            child: Text(
              'Get our donations in a right price for better tommorrow',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            //height: 100,
            width: 300,
            //color: Colors.red,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 5.0, right: 0.0),
            //padding: const EdgeInsets.only(left: 20.0, right: 0.0),
            child: Transform.translate(
              offset: const Offset(0, -10),
              child: Text(
                'We know only too well that what we are doing is nothing more than a drop in the ocean. But if the drop were not there, the ocean would be missing something',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          InkWell(
            child: Container(
              height: 100,
              width: 345,
              //color: Colors.red,
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                borderRadius: BorderRadius.circular(10),
                //color: Color.fromARGB(255, 92, 155, 164),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 5.0,
                    spreadRadius: 1.1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10.0),
                          height: 50,
                          width: 290,
                          alignment: Alignment.centerLeft,
                          //color: Colors.white,
                          child: Text(
                            'America',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10.0),
                          height: 50,
                          width: 290,
                          //color: Colors.red,
                          child: Text(
                            'Al Beruni',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    alignment: Alignment.topLeft,
                    //color: Colors.red,
                    height: 300,
                    width: 80,
                    child: Image.asset(
                      'assets/Images/1.png',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5.0),
                    width: 45,
                    //color: Colors.orange,
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_circle_right,
                        color: Colors.pinkAccent,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => America()));
                        //action code when clicked
                        print("The icon is clicked");
                      },
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => America()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              height: 100,
              width: 345,
              //color: Colors.red,
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                borderRadius: BorderRadius.circular(10),
                //color: Color.fromARGB(255, 92, 155, 164),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 5.0,
                    spreadRadius: 1.1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10.0),
                          height: 50,
                          width: 290,
                          alignment: Alignment.centerLeft,
                          //color: Colors.white,
                          child: Text(
                            'India',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10.0),
                          height: 50,
                          width: 290,
                          //color: Colors.red,
                          child: Text(
                            'Being Human',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    alignment: Alignment.topLeft,
                    //color: Colors.red,
                    height: 300,
                    width: 80,
                    child: Image.asset(
                      'assets/Images/2.png',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5.0),
                    width: 45,
                    //color: Colors.orange,
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_circle_right,
                        color: Colors.pinkAccent,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => India()));
                        print("The icon is clicked");
                      },
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => India()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              height: 100,
              width: 345,
              //color: Colors.red,
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                borderRadius: BorderRadius.circular(10),
                //color: Color.fromARGB(255, 92, 155, 164),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 5.0,
                    spreadRadius: 1.1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10.0),
                          height: 50,
                          width: 290,
                          alignment: Alignment.centerLeft,
                          //color: Colors.white,
                          child: Text(
                            'Saudi Arabia',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10.0),
                          height: 50,
                          width: 290,
                          //color: Colors.red,
                          child: Text(
                            'Al Raiz Donations',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    alignment: Alignment.topLeft,
                    //color: Colors.red,
                    height: 300,
                    width: 80,
                    child: Image.asset(
                      'assets/Images/3.png',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5.0),
                    width: 45,
                    //color: Colors.orange,
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_circle_right,
                        color: Colors.pinkAccent,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Saudi()));
                        //action code when clicked
                        print("The icon is clicked");
                      },
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Saudi()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              height: 100,
              width: 345,
              //color: Colors.red,
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                borderRadius: BorderRadius.circular(10),
                //color: Color.fromARGB(255, 92, 155, 164),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 5.0,
                    spreadRadius: 1.1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10.0),
                          height: 50,
                          width: 290,
                          alignment: Alignment.centerLeft,
                          //color: Colors.white,
                          child: Text(
                            'Dubai',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10.0),
                          height: 50,
                          width: 290,
                          //color: Colors.red,
                          child: Text(
                            'Al Qamar',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    alignment: Alignment.topLeft,
                    //color: Colors.red,
                    height: 300,
                    width: 80,
                    child: Image.asset(
                      'assets/Images/5.png',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5.0),
                    width: 45,
                    //color: Colors.orange,
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_circle_right,
                        color: Colors.pinkAccent,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => dubai()));
                        //action code when clicked
                        print("The icon is clicked");
                      },
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => dubai()));
            },
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 0.0, right: 28.0),
            //padding: const EdgeInsets.only(left: 20.0, right: 0.0),
            alignment: Alignment.center,
            child: InkWell(
                child: Container(
                  child: ProfilePicture(
                    name: 'MK',
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
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            //padding: const EdgeInsets.only(left: 20.0, right: 0.0),
            alignment: Alignment.center,
            child: Text(
              'International Donations',
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
              textColor: Colors.white,
              iconColor: Colors.black,
              text: 'Home',
            ),
            GButton(
              icon: Icons.bubble_chart,
              textColor: Colors.white,
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
