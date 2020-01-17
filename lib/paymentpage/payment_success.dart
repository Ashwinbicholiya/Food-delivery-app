import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery/const/themeColor.dart';
import 'package:food_delivery/location/map.dart';
import '../widgets/profile_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentSuccessPage extends StatefulWidget {
  @override
  PaymentSuccessPageState createState() {
    return new PaymentSuccessPageState();
  }
}

class PaymentSuccessPageState extends State<PaymentSuccessPage> {
  bool isDataAvailable = true;
  Widget bodyData() => Center(
        child: isDataAvailable
            ? RaisedButton(
                shape: StadiumBorder(),
                onPressed: () => showSuccessDialog(),
                color: Colors.amber,
                child: Text("Process Payment"),
              )
            : CircularProgressIndicator(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyData(),
    );
  }

  void showSuccessDialog() {
    setState(() {
      isDataAvailable = false;
      Future.delayed(Duration(seconds: 3)).then((_) => goToDialog());
    });
  }

  goToDialog() {
    setState(() {
      isDataAvailable = true;
    });
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    successTicket(),
                    SizedBox(
                      height: 10.0,
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ));
  }

  successTicket() => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Material(
          clipBehavior: Clip.antiAlias,
          elevation: 2.0,
          borderRadius: BorderRadius.circular(4.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ProfileTile(
                  title: "Thank You!",
                  textColor: Colors.black,
                  subtitle: "Your transaction was successful",
                ),
                ListTile(
                  title: Text("Date"),
                  subtitle: Text(""),
                  trailing: Text("11:00 AM"),
                ),
                ListTile(
                  title: Text("Ashwin Bicholiya"),
                  subtitle: Text("ashwinbicoliya@gmail.com"),
                  trailing: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                        "https://lh3.googleusercontent.com/-pkPFE8SoLfI/XCkghv3J5SI/AAAAAAAAApg/0wY2TMfjTvAlJHA5iQ0BQ-e5u0jvwCIzACEwYBhgL/w138-h140-p/Screenshot_2018-12-19-11-42-04-053_com.instagram.android.png"),
                  ),
                ),
                ListTile(
                  title: Text("Amount"),
                  subtitle: Text("\₹40"),
                  trailing: Text("Completed"),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0.0,
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.ccVisa,
                      color: Themes.color,
                    ),
                    title: Text("Credit/Debit Card"),
                    subtitle: Text("PNB Card ending ***6"),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: Container(
                    height: 40.0,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Themes.color,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Center(
                      child: Text(
                        "Track Your Order",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Location()));
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
