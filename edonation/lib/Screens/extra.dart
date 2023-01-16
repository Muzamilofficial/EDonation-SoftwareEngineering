import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Extra extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

var listfororganization = [];

void GetData() {
  FutureBuilder<QuerySnapshot>(
    future: FirebaseFirestore.instance.collection('Organizations').get(),
    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      if (snapshot.hasData) {
        return Column(
          children: snapshot.data?.docs.map((doc) {
                // your widget here(use doc data)
                return Card();
              }).toList() ??
              [],
        );
      } else {
        // or your loading widget here
        return Container(
          child: ElevatedButton(
            child: Text('Data'),
            onPressed: () {},
          ),
        );
      }
    },
  );
}

class _MyAppState extends State<Extra> {
  List<String> list = ["A", "B", "C", "D"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack Overflow"),
        ),
        body: Center(
          child: Column(
            children: list.map((String data) {
              return ElevatedButton(
                child: Text(data),
                onPressed: () {
                  print(data);
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
