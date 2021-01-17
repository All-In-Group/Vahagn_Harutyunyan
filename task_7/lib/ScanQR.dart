// import 'dart:html';

import 'dart:math';

import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';

class ScanQR extends StatefulWidget {
  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  final logController = TextEditingController();
  final passController = TextEditingController();
  String qrCodeResult = "";

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    logController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Message displayed over here

            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: () {
                showDialog(
                  context: context,
                  child: new Dialog(
                    backgroundColor: Colors.white,
                    insetPadding: EdgeInsets.only(
                         top: 300, left: 10, right: 10),
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            controller: logController,
                            decoration: new InputDecoration(hintText: "Log In"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            controller: passController,
                            decoration:
                                new InputDecoration(hintText: "Password"),
                          ),
                        ),
                        RaisedButton(
                            padding: EdgeInsets.all(15),
                            onPressed: () {
                              var route = new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      NextPage(value: logController.text,value1: passController.text));
                              Navigator.of(context).push(route);
                            },
                            textColor: Colors.white,
                            color: Colors.blueAccent,
                            child: Text(
                              'Submit',
                              style: TextStyle(fontSize: 20),
                            ))
                      ],
                    ),
                  ),
                );
              },
              child: Text(
                "Button1",
                style: TextStyle(color: Colors.indigo[900]),
              ),
              //Button having rounded rectangle border
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.indigo[900]),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),

            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: () {
                showDialog(
                  context: context,
                  child: new Dialog(
                    backgroundColor: Colors.white,
                    insetPadding: EdgeInsets.only(
                        top: 300, left: 10, right: 10),
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            controller: logController,
                            decoration: new InputDecoration(hintText: "Log In"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            controller: passController,
                            decoration:
                            new InputDecoration(hintText: "Password"),
                          ),
                        ),
                        RaisedButton(
                            padding: EdgeInsets.all(15),
                            onPressed: () {
                              var route = new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      NextPage(value: logController.text,value1: passController.text));
                              Navigator.of(context).push(route);
                            },
                            textColor: Colors.white,
                            color: Colors.blueAccent,
                            child: Text(
                              'Submit',
                              style: TextStyle(fontSize: 20),
                            ))
                      ],
                    ),
                  ),
                );
              },
              child: Text(
                "Button2",
                style: TextStyle(color: Colors.indigo[900]),
              ),
              //Button having rounded rectangle border
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.indigo[900]),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),

            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: () {
                showDialog(
                  context: context,
                  child: new Dialog(
                    backgroundColor: Colors.white,
                    insetPadding: EdgeInsets.only(
                        top: 300, left: 10, right: 10),
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            controller: logController,
                            decoration: new InputDecoration(hintText: "Log In"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            controller: passController,
                            decoration:
                            new InputDecoration(hintText: "Password"),
                          ),
                        ),
                        RaisedButton(
                            padding: EdgeInsets.all(15),
                            onPressed: () {
                              var route = new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      NextPage(value: logController.text,value1: passController.text));
                              Navigator.of(context).push(route);
                            },
                            textColor: Colors.white,
                            color: Colors.blueAccent,
                            child: Text(
                              'Submit',
                              style: TextStyle(fontSize: 20),
                            ))
                      ],
                    ),
                  ),
                );
              },
              child: Text(
                "Button3",
                style: TextStyle(color: Colors.indigo[900]),
              ),
              //Button having rounded rectangle border
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.indigo[900]),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            //Button to scan QR code
            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: () async {
                String codeSanner =
                    await BarcodeScanner.scan(); //barcode scnner
                setState(() {
                  qrCodeResult = codeSanner;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => ScanQR()));
                });
              },
              child: Text(
                "Open Scanner",
                style: TextStyle(color: Colors.indigo[900]),
              ),
              //Button having rounded rectangle border
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.indigo[900]),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  final String value;
  final String value1;


  NextPage({Key key, this.value, this.value1}) : super(key: key);

  @override
  _NextPageState createState() => new _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Next Page"),
      ),
      body: Row(children: [
        Text("${widget.value}"),
        Text("${widget.value1}"),
      ],)

    );
  }
}
