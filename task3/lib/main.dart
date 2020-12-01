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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white70,
          title: Center(
              child: Image.network(
                  'https://jobs.am/wp-content/uploads/2019/05/319561_242685085778702_1488253307_n.jpg',
                  height: 50.00,
                  width: 50.00)),

          actions: <Widget>[IconButton(icon: Icon(Icons.search))]),
      body: Image.network('https://jobs.am/wp-content/uploads/2019/05/319561_242685085778702_1488253307_n.jpg',

          height: 500.00,
          width: 500.00
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("հայ   Eng   Рус   Fra   Deu   Esp   Ita"),
            ),
            ListTile(
              title: Text("Who we are"),

            ),ListTile(
              title: Text("About us"),

            ),ListTile(
              title: Text("Our trustees"),

            ),ListTile(
              title: Text("Our donors"),

            ),ListTile(
              title: Text("Our team"),

            ),ListTile(
              title: Text("Our partners"),

            ),ListTile(
              title: Text("contact us"),
            ),
          ],
        ),
      ),
    );
  }
}
