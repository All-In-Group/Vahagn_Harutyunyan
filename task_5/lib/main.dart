import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:task_5/custom_icons_icons.dart';
// import 'custom_icons_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context)  {
    return Scaffold(
        body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                snap: true,
                floating: true,
                forceElevated: boxIsScrolled,
                backgroundColor: Colors.green[700],
                leading: IconButton(
                  icon: Icon(Icons.menu),
                ),
                title: Text(
                  'GeeksforGeeks',
                  style: TextStyle(fontSize: 30),
                ),
                actions: [IconButton(icon: Icon(Icons.search))],
                expandedHeight: 2 * kToolbarHeight,
                bottom: TabBar(
                  tabs: <Widget>[Tab(text: "FEED"), Tab(text: "RECENT")],
                  controller: _tabController,
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[ PageOne(),
              PageTwo(),],
            controller: _tabController,
          ),
        ),

        bottomNavigationBar: BottomAppBar(
            child: Row(children: [
          IconButton(
            icon: Icon(CustomIcons.home),
            tooltip: 'Home',
          ),
          Spacer(),
          IconButton(
            icon: Icon(CustomIcons.book_open),
            tooltip: 'Topics',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Topics()),
              );
            },
          ),
          Spacer(),
          IconButton(
            icon: Icon(CustomIcons.help_circled),
            tooltip: 'Quiz',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quiz()),
              );
            },
          ),
        ])));
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),],
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 0,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              //   BoxShadow(
              //   color: Colors.grey.withOpacity(0.2),
              //   spreadRadius: 0.01,
              //   blurRadius: 0.01,
              //   offset: Offset(0, 3), // changes position of shadow
              // ),
            ],
          ),
          child: Column(children: [
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text:
                      "Validate an IP address using Python without using RegEx\n",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black)),
                  TextSpan(
                      text:
                      "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                      style: TextStyle(fontSize: 13, color: Colors.black)),
                ])),
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: RaisedButton(
                        child: Text("Python"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                Align(
                    alignment: Alignment.topLeft,
                    child: RaisedButton(
                        child: Text("Python Programs"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
              ],
            )
          ])),
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),
        Container(
            margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                //   BoxShadow(
                //   color: Colors.grey.withOpacity(0.2),
                //   spreadRadius: 0.01,
                //   blurRadius: 0.01,
                //   offset: Offset(0, 3), // changes position of shadow
                // ),
              ],
            ),
            child: Column(children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                    TextSpan(
                        text:
                        "Validate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\nValidate an IP address using Python without using RegEx\n",
                        style: TextStyle(fontSize: 13, color: Colors.black)),
                  ])),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RaisedButton(
                          child: Text("Python Programs"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ],
              )
            ])),],
    );
  }
}

class Topics extends StatefulWidget
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }
  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                snap: true,
                floating: true,
                forceElevated: boxIsScrolled,
                backgroundColor: Colors.green[700],
                leading: IconButton(
                  icon: Icon(Icons.menu),
                ),
                title: Text(
                  'GeeksforGeeks',
                  style: TextStyle(fontSize: 30),
                ),
                actions: [IconButton(icon: Icon(Icons.search))],
                expandedHeight: 2 * kToolbarHeight,
                bottom: TabBar(
                  tabs: <Widget>[Tab(text: "FEED"), Tab(text: "RECENT")],
                  controller: _tabController,
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[ PageOne(),
              PageTwo(),],
            controller: _tabController,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Row(children: [
              IconButton(
                icon: Icon(CustomIcons.home),
                tooltip: 'Home',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(CustomIcons.book_open),
                tooltip: 'Topics',
              ),
              Spacer(),
              IconButton(
                icon: Icon(CustomIcons.help_circled),
                tooltip: 'Quiz',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Quiz()),
                  );
                },
              ),
            ])));
  }
}

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CustomScrollView(
                // Add the app bar and list of items as slivers in the next steps.
                slivers: <Widget>[
              SliverAppBar(
                snap: true,
                forceElevated: true,
                floating: true,
                backgroundColor: Colors.green[700],
                leading: IconButton(
                  icon: Icon(Icons.menu),
                ),
                title: Text(
                  'GeeksforGeeks',
                  style: TextStyle(fontSize: 30),
                ),
                actions: [IconButton(icon: Icon(Icons.search))],
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 10, top: 5, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          //   BoxShadow(
                          //   color: Colors.grey.withOpacity(0.2),
                          //   spreadRadius: 0.01,
                          //   blurRadius: 0.01,
                          //   offset: Offset(0, 3), // changes position of shadow
                          // ),
                        ],
                      ),
                      child: Column(children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                        ])),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python Programs"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ],
                        )
                      ])),
                  Container(
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 10, top: 5, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          //   BoxShadow(
                          //   color: Colors.grey.withOpacity(0.2),
                          //   spreadRadius: 0.01,
                          //   blurRadius: 0.01,
                          //   offset: Offset(0, 3), // changes position of shadow
                          // ),
                        ],
                      ),
                      child: Column(children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                        ])),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python Programs"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ],
                        )
                      ])),
                  Container(
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 10, top: 5, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          //   BoxShadow(
                          //   color: Colors.grey.withOpacity(0.2),
                          //   spreadRadius: 0.01,
                          //   blurRadius: 0.01,
                          //   offset: Offset(0, 3), // changes position of shadow
                          // ),
                        ],
                      ),
                      child: Column(children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                        ])),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python Programs"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ],
                        )
                      ])),
                  Container(
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 10, top: 5, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          //   BoxShadow(
                          //   color: Colors.grey.withOpacity(0.2),
                          //   spreadRadius: 0.01,
                          //   blurRadius: 0.01,
                          //   offset: Offset(0, 3), // changes position of shadow
                          // ),
                        ],
                      ),
                      child: Column(children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                        ])),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python Programs"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ],
                        )
                      ])),
                  Container(
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 10, top: 5, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          //   BoxShadow(
                          //   color: Colors.grey.withOpacity(0.2),
                          //   spreadRadius: 0.01,
                          //   blurRadius: 0.01,
                          //   offset: Offset(0, 3), // changes position of shadow
                          // ),
                        ],
                      ),
                      child: Column(children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                        ])),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python Programs"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ],
                        )
                      ])),
                  Container(
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 10, top: 5, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          //   BoxShadow(
                          //   color: Colors.grey.withOpacity(0.2),
                          //   spreadRadius: 0.01,
                          //   blurRadius: 0.01,
                          //   offset: Offset(0, 3), // changes position of shadow
                          // ),
                        ],
                      ),
                      child: Column(children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                        ])),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python Programs"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ],
                        )
                      ])),
                  Container(
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 10, top: 5, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          //   BoxShadow(
                          //   color: Colors.grey.withOpacity(0.2),
                          //   spreadRadius: 0.01,
                          //   blurRadius: 0.01,
                          //   offset: Offset(0, 3), // changes position of shadow
                          // ),
                        ],
                      ),
                      child: Column(children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                        ])),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python Programs"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ],
                        )
                      ])),
                  Container(
                      height: 150,
                      margin: EdgeInsets.only(
                          left: 10, top: 5, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          //   BoxShadow(
                          //   color: Colors.grey.withOpacity(0.2),
                          //   spreadRadius: 0.01,
                          //   blurRadius: 0.01,
                          //   offset: Offset(0, 3), // changes position of shadow
                          // ),
                        ],
                      ),
                      child: Column(children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx\n",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          TextSpan(
                              text:
                                  "Validate an IP address using Python without using RegEx",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                        ])),
                        Row(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: RaisedButton(
                                    child: Text("Python Programs"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ],
                        )
                      ])),
                ]),
              )
            ])),
        bottomNavigationBar: BottomAppBar(
            child: Row(children: [
          IconButton(
            icon: Icon(CustomIcons.home),
            tooltip: 'Home',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Topics()),
              );
            },
          ),
          Spacer(),
          IconButton(
            icon: Icon(CustomIcons.book_open),
            tooltip: 'Topics',
          ),
          Spacer(),
          IconButton(
            icon: Icon(CustomIcons.help_circled),
            tooltip: 'Quiz',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quiz()),
              );
            },
          ),
        ])));
  }
}
