import 'dart:async';

//import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'ManualEnter.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String result = "";

  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission was denied";
        });
      } else {
        setState(() {
          result = "Unknown Error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "You pressed the back button before scanning anything";
      });
    } catch (ex) {
      setState(() {
        result = "Unknown Error $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: null,
            elevation: 0,
            title: Text(
              "Recycle",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                letterSpacing: 5,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          body: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 13, 10),
              child: Stack(

                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                  fit: StackFit.expand,
                  children: <Widget>[
                    Positioned(
                        height: 150,
                        width: 120,
                        right: 1,
                        top: 350,
                        child: Text(
                          "ScanQR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800),
                        )),
                    Positioned(
                        height: 150,
                        width: 120,
                        right: 200,
                        top: 350,
                        child: Text(
                          "Enter Manually",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800),
                        )),
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        child: FlatButton(
                            onPressed: _scanQR,
                            padding: EdgeInsets.all(0),
                            shape: CircleBorder(),
                            //: Colors.green,

                            child: Ink.image(
                                image: AssetImage('assets/download.png'),
                                fit: BoxFit.fill,
                                width: 100,
                                height: 100,
                                padding: EdgeInsets.all(0))),
                      ),
                      height: 150,
                      width: 120,
                      right: 30,
                      top: 190,
                    ),
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ManualEnter()));
                          },
                          padding: EdgeInsets.all(0),
                          child: Ink.image(
                            image: AssetImage('assets/typing.png'),
                            fit: BoxFit.fill,
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(5),
                          ),
                        ),
                      ),
                      height: 150,
                      width: 120,
                      right: 220,
                      top: 190,
                    )
                  ]))),
      title: "Recycle App",
    );
  }
}