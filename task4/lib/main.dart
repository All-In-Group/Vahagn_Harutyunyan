import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.network(
          "https://www.gs1hk.org/sites/default/files/2020-09/China%20market.png",
          height: 300,
          width: 300,
        ),
        leadingWidth: 300,
        title: Text(
          "City Center",
          style: TextStyle(
            color: Colors.red,
            fontSize: 45,
            fontStyle: FontStyle.italic,
          ),
        ),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              margin: EdgeInsets.only(bottom: 20),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '000 001',
                    style: new TextStyle(
                        fontSize: 38.0,
                        fontFamily: 'Roboto',
                        color: Colors.black),
                  ))),
          Align(
              alignment: Alignment.center,
              child: Image.network(
                "https://habrastorage.org/getpro/habr/upload_files/0dd/9c5/5ed/0dd9c55ed110ac072f70640fd6035614.png",
                height: 250,
                width: 250,
              )),
          Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(top: 20),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Scan code',
                    style: new TextStyle(
                        fontSize: 38.0,
                        fontFamily: 'Roboto',
                        color: Colors.black),
                  )))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(children: [
        IconButton(icon: Icon(Icons.home)),
        Spacer(),
        IconButton(
            icon: Icon(Icons.style),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Style()),
              );
            }),
        Spacer(),
        IconButton(
            icon: Icon(Icons.add_alert),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddAlert()),
              );
            }),
        Spacer(),
        IconButton(
            icon: Icon(Icons.account_box),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountBox()),
              );
            }),
      ])),
    );
  }
}

//New Class

class Style extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(children: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                }),
            Spacer(),
            IconButton(
              icon: Icon(Icons.style),
            ),
            Spacer(),
            IconButton(
                icon: Icon(Icons.add_alert),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddAlert()),
                  );
                }),
            Spacer(),
            IconButton(
                icon: Icon(Icons.account_box),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountBox()),
                  );
                }),
          ]),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Image.network(
            "https://www.gs1hk.org/sites/default/files/2020-09/China%20market.png",
            height: 300,
            width: 300,
          ),
          leadingWidth: 300,
          title: Text(
            "City Center",
            style: TextStyle(
              color: Colors.red,
              fontSize: 45,
              fontStyle: FontStyle.italic,
            ),
          ),),
        body: ListView(children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(20),
              child: ListTile(
                leading: Image.network(
                  "https://elburritocatering.com/wp-content/uploads/2019/10/can-of-coke.jpg",
                  height: 100,
                  width: 110,
                ),
                title: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Coca Cola \n",
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                  TextSpan(
                      text: "Only today get coca-cola with 0.1\$",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                ])),
              )),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(20),
              child: ListTile(
                leading: Image.network(
                  "https://elburritocatering.com/wp-content/uploads/2019/10/can-of-coke.jpg",
                  height: 100,
                  width: 110,
                ),
                title: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Coca Cola \n",
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                  TextSpan(
                      text: "Only today get coca-cola with 0.1\$",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                ])),
              )),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(20),
              child: ListTile(
                leading: Image.network(
                  "https://elburritocatering.com/wp-content/uploads/2019/10/can-of-coke.jpg",
                  height: 100,
                  width: 110,
                ),
                title: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Coca Cola \n",
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                  TextSpan(
                      text: "Only today get coca-cola with 0.1\$",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                ])),
              )),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(20),
              child: ListTile(
                leading: Image.network(
                  "https://elburritocatering.com/wp-content/uploads/2019/10/can-of-coke.jpg",
                  height: 100,
                  width: 110,
                ),
                title: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Coca Cola \n",
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                  TextSpan(
                      text: "Only today get coca-cola with 0.1\$",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                ])),
              )),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(20),
              child: ListTile(
                leading: Image.network(
                  "https://elburritocatering.com/wp-content/uploads/2019/10/can-of-coke.jpg",
                  height: 100,
                  width: 110,
                ),
                title: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Coca Cola \n",
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                  TextSpan(
                      text: "Only today get coca-cola with 0.1\$",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                ])),
              )),
        ]));
  }
}

//New Class
class AddAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(children: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                }),
            Spacer(),
            IconButton(
                icon: Icon(Icons.style),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Style()),
                  );
                }),
            Spacer(),
            IconButton(
              icon: Icon(Icons.add_alert),
            ),
            Spacer(),
            IconButton(
                icon: Icon(Icons.account_box),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountBox()),
                  );
                }),
          ]),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Image.network(
            "https://www.gs1hk.org/sites/default/files/2020-09/China%20market.png",
            height: 300,
            width: 300,
          ),
          leadingWidth: 300,
          title: Text(
            "City Center",
            style: TextStyle(
              color: Colors.red,
              fontSize: 45,
              fontStyle: FontStyle.italic,
            ),
          ),),
        body: ListView(children: [
          Container(
              height: 110,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(30),
              child: ListTile(
                leading: Padding(
                    padding: EdgeInsets.only(right: 1, bottom: 1),
                    child: Image.network(
                      "https://cdn4.iconfinder.com/data/icons/social-messaging-ui-coloricon-1/21/61-512.png",
                      alignment: Alignment.topLeft,
                      height: 50,
                    )),
                title: Text(
                    "You get 2KWD bonus\ndate:    05.11.2020\naddress:    Opposite Dalal Center, Al-Dajeej,",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    )),
              )),
          Container(
              height: 110,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(30),
              child: ListTile(
                leading: Padding(
                    padding: EdgeInsets.only(right: 1, bottom: 1),
                    child: Image.network(
                      "https://cdn4.iconfinder.com/data/icons/social-messaging-ui-coloricon-1/21/61-512.png",
                      alignment: Alignment.topLeft,
                      height: 50,
                    )),
                title: Text(
                    "You get 2KWD bonus\ndate:    05.11.2020\naddress:    Opposite Dalal Center, Al-Dajeej,",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    )),
              )),
          Container(
              height: 110,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(30),
              child: ListTile(
                leading: Padding(
                    padding: EdgeInsets.only(right: 1, bottom: 1),
                    child: Image.network(
                      "https://cdn4.iconfinder.com/data/icons/social-messaging-ui-coloricon-1/21/61-512.png",
                      alignment: Alignment.topLeft,
                      height: 50,
                    )),
                title: Text(
                    "You get 2KWD bonus\ndate:    05.11.2020\naddress:    Opposite Dalal Center, Al-Dajeej,",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    )),
              )),
          Container(
              height: 110,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(30),
              child: ListTile(
                leading: Padding(
                    padding: EdgeInsets.only(right: 1, bottom: 1),
                    child: Image.network(
                      "https://cdn4.iconfinder.com/data/icons/social-messaging-ui-coloricon-1/21/61-512.png",
                      alignment: Alignment.topLeft,
                      height: 50,
                    )),
                title: Text(
                    "You get 2KWD bonus\ndate:    05.11.2020\naddress:    Opposite Dalal Center, Al-Dajeej,",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    )),
              )),
          Container(
              height: 110,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(30),
              child: ListTile(
                leading: Padding(
                    padding: EdgeInsets.only(right: 1, bottom: 1),
                    child: Image.network(
                      "https://cdn4.iconfinder.com/data/icons/social-messaging-ui-coloricon-1/21/61-512.png",
                      alignment: Alignment.topLeft,
                      height: 50,
                    )),
                title: Text(
                    "You get 2KWD bonus\ndate:    05.11.2020\naddress:    Opposite Dalal Center, Al-Dajeej,",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    )),
              )),
        ]));
  }
}

//New Class
class AccountBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              }),
          Spacer(),
          IconButton(
              icon: Icon(Icons.style),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Style()),
                );
              }),
          Spacer(),
          IconButton(
              icon: Icon(Icons.add_alert),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddAlert()),
                );
              }),
          Spacer(),
          IconButton(
            icon: Icon(Icons.account_box),
          ),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.network(
          "https://www.gs1hk.org/sites/default/files/2020-09/China%20market.png",
          height: 300,
          width: 300,
        ),
        leadingWidth: 300,
        title: Text(
          "City Center",
          style: TextStyle(
            color: Colors.red,
            fontSize: 45,
            fontStyle: FontStyle.italic,
          ),
        ),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Sarah Al Ali",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic)),
          Text("id:                                         000 001",
              style: TextStyle(fontSize: 32, fontStyle: FontStyle.italic)),
          Text("phone:                         +965564126",
              style: TextStyle(fontSize: 32, fontStyle: FontStyle.italic)),
          Text("email:       sarah.al.ali@gmail.com\n\n",
              style: TextStyle(fontSize: 32, fontStyle: FontStyle.italic)),
          Text("points:                                    39kwd",
              style: TextStyle(fontSize: 32, fontStyle: FontStyle.italic)),
          Text("discount:                                      7%",
              style: TextStyle(fontSize: 32, fontStyle: FontStyle.italic)),
          Padding(
            padding: EdgeInsets.all(2),
            child: SizedBox(
                height: 45,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.black),
                  ),
                  child: Center(
                      child: Text(
                    "detailed information",
                    style: TextStyle(fontSize: 20),
                  )),
                )),
          ),
          Padding(
            padding: EdgeInsets.all(2),
            child: SizedBox(
                height: 45,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.black),
                  ),
                  child: Center(
                      child: Text(
                    "settings",
                    style: TextStyle(fontSize: 20),
                  )),
                )),
          ),
        ],
      ),
    );
  }
}
