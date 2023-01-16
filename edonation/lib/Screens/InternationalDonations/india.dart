// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edonation/Screens/HomePage/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_paypal/flutter_paypal.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../PakistanCharities/pakcharity.dart';
import 'International.dart';

class India extends StatefulWidget {
  India();

  @override
  State<India> createState() => _IndiaState();
}

class _IndiaState extends State<India> {
  getCurrentDate() {
    var date = DateTime.now().toString();

    var dateParse = DateTime.parse(date);

    var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";

    return formattedDate;
  }

  //final AuthService _auth = new AuthService();
  final _donate = TextEditingController();

  int _selectedIndex=5;

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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => International()),
                    );
                    print("The icon is clicked");
                  },
                )),
                SizedBox(width: 85),
                Container(
                  child: Text(
                    'India Donation',
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
              'Being Human',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
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
              'An interest in human nature can take many forms).',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            height: 30,
            width: 300,
            //color: Colors.red,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 5.0, right: 0.0),
            //padding: const EdgeInsets.only(left: 20.0, right: 0.0),
            child: Text(
              'beinghuman@gamil.com',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            //color: Colors.red,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 5.0, right: 0.0),
            //padding: const EdgeInsets.only(left: 20.0, right: 0.0),
            child: Text(
              'Contact No: +93 121212098',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 20.0, left: 10.0),
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
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              height: 250,
              width: 339,
              child: Image.asset(
                'assets/Images/splash.png',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
    final emailField = TextFormField(
        controller: _donate,
        autofocus: false,
        //keyboardType: TextInputType.number,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
        ],
//onChanged: (value) => doubleVar = double.parse(value),
        validator: (value) {
          if (value != null) {
            // if (value.contains('@') && value.endsWith('.com')) {
            //   return null;
            // }
            return 'Enter a Valid Email Address';
          }
        },
        // ignore: prefer_const_constructors
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.money_off),
          contentPadding: EdgeInsets.symmetric(vertical: 40),
          // prefixIcon: Padding(
          //     padding: EdgeInsets.only(right: 10),
          //     child: const Icon(
          //       Icons.email,
          //       size: 15,
          //     ))));
          //contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Enter the amount",
          hintStyle: (TextStyle(color: Colors.grey)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),
        ));
    final Payment = Material(
      child: Container(
        child: ElevatedButton(
          onPressed: () async {
            if (_donate.text == "") {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0)), //this right here
                      child: Container(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Please Enter Amount',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            } else {
              Map<String, String> dataToSave = {
                'Email': FirebaseAuth.instance.currentUser!.email!,
                'Name': 'Being Human',
                'Date': "${getCurrentDate()}",
                'Amout': _donate.text,
              };

              FirebaseFirestore.instance
                  .collection('InternationalDonation')
                  .add(dataToSave);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => UsePaypal(
                      sandboxMode: true,
                      clientId:
                          "AW1TdvpSGbIM5iP4HJNI5TyTmwpY9Gv9dYw8_8yW5lYIbCqf326vrkrp0ce9TAqjEGMHiV3OqJM_aRT0",
                      secretKey:
                          "EHHtTDjnmTZATYBPiGzZC_AZUfMpMAzj2VZUeqlFUrRJA_C0pQNCxDccB5qoRQSEdcOnnKQhycuOWdP9",
                      returnURL: "https://samplesite.com/return",
                      cancelURL: "https://samplesite.com/cancel",
                      transactions: const [
                        {
                          "amount": {
                            "total": '10.12',
                            "currency": "USD",
                            "details": {
                              "subtotal": '10.12',
                              "shipping": '0',
                              "shipping_discount": 0
                            }
                          },
                          "description": "The payment transaction description.",
                          // "payment_options": {
                          //   "allowed_payment_method":
                          //       "INSTANT_FUNDING_SOURCE"
                          // },
                          "item_list": {
                            "items": [
                              {
                                "name": "A demo product",
                                "quantity": 1,
                                "price": '10.12',
                                "currency": "USD"
                              }
                            ],

                            // shipping address is not required though
                            "shipping_address": {
                              "recipient_name": "Jane Foster",
                              "line1": "Travis County",
                              "line2": "",
                              "city": "Austin",
                              "country_code": "US",
                              "postal_code": "73301",
                              "phone": "+00000000",
                              "state": "Texas"
                            },
                          }
                        }
                      ],
                      note: "Contact us for any questions on your order.",
                      onSuccess: (Map params) async {
                        print("onSuccess: $params");
                      },
                      onError: (error) {
                        print("onError: $error");
                      },
                      onCancel: (params) {
                        print('cancelled: $params');
                      }),
                ),
              );
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0)), //this right here
                      child: Container(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Your Donation Is Successfull',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
              _donate.text = "";
            }
          },
          child: Text('Continue With PAYPAL'),
        ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
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
                    emailField,
                    SizedBox(
                      height: 20,
                    ),
                    Payment,
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
