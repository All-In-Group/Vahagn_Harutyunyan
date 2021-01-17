import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'GenerateQr.dart';
import 'ScanQR.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QRCode Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String qrCodeResult = "Not Yet Scanned";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: 700,
          height: 900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Display Image
              Image(image: NetworkImage(
                  "https://images-na.ssl-images-amazon.com/images/I/61hQSWT5TFL.png"),
                height: 300,),
              SizedBox(height: 15),
              //First Button
              FlatButton(
                padding: EdgeInsets.all(22),
                onPressed: () async {
                  String codeSanner = await BarcodeScanner
                      .scan(); //barcode scnner
                  setState(() {
                    qrCodeResult = codeSanner;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ScanQR()));
                  });
                },
                child: Text(
                  "Scan QR Code", style: TextStyle(color: Colors.blueAccent,
                    fontSize: 20),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.blueAccent),
                ),
              ),


              //Second Button
              // FlatButton(
              //   padding: EdgeInsets.all(22),
              //   onPressed: (){
              //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
              //         GenerateQR()));
              //   },
              //   child: Text("Generate QR Code", style: TextStyle(color: Colors.blueAccent,
              //   fontSize: 20),),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20),
              //     side: BorderSide(color: Colors.blueAccent),
              //   ),
              // ),
            ],
          ),
        )


    );
  }
}




