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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
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
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
           ListTile(
          title: Text(
            'vahagvhv',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 100,
              maxWidth: 100,
              maxHeight: 100,
            ),
            child: Image.asset('assets/images/programmer.png'),
          ),
        ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.calendar_today_outlined),
                      ),
                      TextSpan(
                        text: '           Interest',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.computer_outlined ),
                      ),
                      TextSpan(
                        text: '           My Courses',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.watch_later_outlined),
                      ),
                      TextSpan(
                        text: '           Todo/Done',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.arrow_circle_down_outlined),
                      ),
                      TextSpan(
                        text: '           Offline/Article',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.star_outline),
                      ),
                      TextSpan(
                        text: '           Rate Us',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.headset_outlined),
                      ),
                      TextSpan(
                        text: '           Support',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.settings_outlined),
                      ),
                      TextSpan(
                        text: '           Settings',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.logout),
                      ),
                      TextSpan(
                        text: '           Log out',
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                snap: true,
                floating: true,
                forceElevated: boxIsScrolled,
                backgroundColor: Colors.green[700],
                // leading: IconButton(
                //   icon: Icon(Icons.menu),
                // ),
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
            children: <Widget>[
              Feed(),
              Recent(),
            ],
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

class Feed extends StatelessWidget {
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
            ])),
      ],
    );
  }
}

class Recent extends StatelessWidget {
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
            ])),
      ],
    );
  }
}

class Topics extends StatefulWidget // State<MyHomePage>
//with SingleTickerProviderStateMixin
{
  @override
  _TopicsState createState() => _TopicsState();
}

class _TopicsState extends State<Topics> with TickerProviderStateMixin {
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
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  'vahagvhv',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 100,
                    minHeight: 100,
                    maxWidth: 100,
                    maxHeight: 100,
                  ),
                  child: Image.asset('assets/images/programmer.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.calendar_today_outlined),
                      ),
                      TextSpan(
                        text: '           Interest',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.computer_outlined ),
                      ),
                      TextSpan(
                        text: '           My Courses',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.watch_later_outlined),
                      ),
                      TextSpan(
                        text: '           Todo/Done',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.arrow_circle_down_outlined),
                      ),
                      TextSpan(
                        text: '           Offline/Article',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.star_outline),
                      ),
                      TextSpan(
                        text: '           Rate Us',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.headset_outlined),
                      ),
                      TextSpan(
                        text: '           Support',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.settings_outlined),
                      ),
                      TextSpan(
                        text: '           Settings',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.logout),
                      ),
                      TextSpan(
                        text: '           Log out',
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                snap: true,
                floating: true,
                forceElevated: boxIsScrolled,
                backgroundColor: Colors.green[700],

                title: Text(
                  'GeeksforGeeks',
                  style: TextStyle(fontSize: 30),
                ),
                actions: [IconButton(icon: Icon(Icons.search))],
                expandedHeight: 2,

                bottom: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,

                  tabs: <Widget>[
                    Tab(text: "POPULAR"),
                    Tab(text: "INTERVIEW")
                    // Tab(text: "ALL")
                  ],
                  controller: _tabController,

                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[Popular(), Interview()],
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

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {

  final List<String> items = <String>[
    'Searching Algorithms',
    'Comparisons',
    'Library Implementations of Searching Algorithms',
    'Coding problems'
  ];
  String selectedItem = 'Searching Algorithms';


  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          isExpanded: true,
          value: selectedItem,
          onChanged: (String string) => setState(() => selectedItem = string),
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Text("Searching Algorithms");
            }).toList();
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              child: Text('$item'),
              value: item,
            );
          }).toList(),
        ),
       ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          isExpanded: true,
          value: selectedItem,
          onChanged: (String string) => setState(() => selectedItem = string),
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Text("Bitwise Algorithms");
            }).toList();
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              child: Text('$item'),
              value: item,
            );
          }).toList(),
        ),
       ),

    Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          isExpanded: true,
          value: selectedItem,
          onChanged: (String string) => setState(() => selectedItem = string),
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Text("Sorting Algorithms");
            }).toList();
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              child: Text('$item'),
              value: item,
            );
          }).toList(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          isExpanded: true,
          value: selectedItem,
          onChanged: (String string) => setState(() => selectedItem = string),
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Text("Bitwise Algorithms");
            }).toList();
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              child: Text('$item'),
              value: item,
            );
          }).toList(),
        ),
      ),Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          isExpanded: true,
          value: selectedItem,
          onChanged: (String string) => setState(() => selectedItem = string),
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Text("Geometric Algorithms");
            }).toList();
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              child: Text('$item'),
              value: item,
            );
          }).toList(),
        ),
      ),Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          isExpanded: true,
          value: selectedItem,
          onChanged: (String string) => setState(() => selectedItem = string),
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Text("Mathematical Algorithms");
            }).toList();
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              child: Text('$item'),
              value: item,
            );
          }).toList(),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          isExpanded: true,
          value: selectedItem,
          onChanged: (String string) => setState(() => selectedItem = string),
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Text("Mathematical Algorithms");
            }).toList();
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              child: Text('$item'),
              value: item,
            );
          }).toList(),
        ),
      ),
    ]);
  }
}

class Interview extends StatefulWidget {
  @override
  _InterviewState createState() => _InterviewState();
}

class _InterviewState extends State<Interview> {

  final List<String> items = <String>[
    'Searching Algorithms',
    'Comparisons',
    'Library Implementations of Searching Algorithms',
    'Coding problems'
  ];
  String selectedItem = 'Searching Algorithms';


  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          height: 63,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.grey)
          ),

          color: Colors.white,
          child: Text(
            "Amazon(833)",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          ),
        ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          height: 63,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.grey)
          ),

          color: Colors.white,
          child: Text(
            "STL(404)",
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          height: 63,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.grey)
          ),

          color: Colors.white,
          child: Text(
            "Microsoft(381)",
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          height: 63,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.grey)
          ),

          color: Colors.white,
          child: Text(
            "number-theory(160)",
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          height: 63,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.grey)
          ),

          color: Colors.white,
          child: Text(
            "Prime Number(133)",
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          height: 63,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.grey)
          ),

          color: Colors.white,
          child: Text(
            "Adobe(130)",
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          height: 63,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.grey)
          ),

          color: Colors.white,
          child: Text(
            "Oracle(122)",
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
      ),
    ]);
  }
}


class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz>with SingleTickerProviderStateMixin {


  final List<String> items1 = <String>[
    'Searching Algorithms',
    'Comparisons',
    'Library Implementations of Searching Algorithms',
    'Coding problems'
  ];
  String selectedItem1 = 'Searching Algorithms';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  'vahagvhv',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 100,
                    minHeight: 100,
                    maxWidth: 100,
                    maxHeight: 100,
                  ),
                  child: Image.asset('assets/images/programmer.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.calendar_today_outlined),
                      ),
                      TextSpan(
                        text: '           Interest',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.computer_outlined ),
                      ),
                      TextSpan(
                        text: '           My Courses',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.watch_later_outlined),
                      ),
                      TextSpan(
                        text: '           Todo/Done',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.arrow_circle_down_outlined),
                      ),
                      TextSpan(
                        text: '           Offline/Article',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.star_outline),
                      ),
                      TextSpan(
                        text: '           Rate Us',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.headset_outlined),
                      ),
                      TextSpan(
                        text: '           Support',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.settings_outlined),
                      ),
                      TextSpan(
                        text: '           Settings',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.logout),
                      ),
                      TextSpan(
                        text: '           Log out',
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        body: NestedScrollView(
          body: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
                isExpanded: true,
                value: selectedItem1,
                onChanged: (String string) => setState(() => selectedItem1 = string),
                selectedItemBuilder: (BuildContext context) {
                  return items1.map<Widget>((String item1) {
                    return Text("Searching Algorithms");
                  }).toList();
                },
                items: items1.map((String item1) {
                  return DropdownMenuItem<String>(
                    child: Text('$item1'),
                    value: item1,
                  );
                }).toList(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
                isExpanded: true,
                value: selectedItem1,
                onChanged: (String string) => setState(() => selectedItem1 = string),
                selectedItemBuilder: (BuildContext context) {
                  return items1.map<Widget>((String item) {
                    return Text("Bitwise Algorithms");
                  }).toList();
                },
                items: items1.map((String item1) {
                  return DropdownMenuItem<String>(
                    child: Text('$item1'),
                    value: item1,
                  );
                }).toList(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
                isExpanded: true,
                value: selectedItem1,
                onChanged: (String string) => setState(() => selectedItem1 = string),
                selectedItemBuilder: (BuildContext context) {
                  return items1.map<Widget>((String item1) {
                    return Text("Sorting Algorithms");
                  }).toList();
                },
                items: items1.map((String item1) {
                  return DropdownMenuItem<String>(
                    child: Text('$item1'),
                    value: item1,
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
                isExpanded: true,
                value: selectedItem1,
                onChanged: (String string) => setState(() => selectedItem1 = string),
                selectedItemBuilder: (BuildContext context) {
                  return items1.map<Widget>((String item1) {
                    return Text("Bitwise Algorithms");
                  }).toList();
                },
                items: items1.map((String item1) {
                  return DropdownMenuItem<String>(
                    child: Text('$item1'),
                    value: item1,
                  );
                }).toList(),
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
                isExpanded: true,
                value: selectedItem1,
                onChanged: (String string) => setState(() => selectedItem1 = string),
                selectedItemBuilder: (BuildContext context) {
                  return items1.map<Widget>((String item1) {
                    return Text("Geometric Algorithms");
                  }).toList();
                },
                items: items1.map((String item1) {
                  return DropdownMenuItem<String>(
                    child: Text('$item1'),
                    value: item1,
                  );
                }).toList(),
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
                isExpanded: true,
                value: selectedItem1,
                onChanged: (String string) => setState(() => selectedItem1 = string),
                selectedItemBuilder: (BuildContext context) {
                  return items1.map<Widget>((String item) {
                    return Text("Mathematical Algorithms");
                  }).toList();
                },
                items: items1.map((String item1) {
                  return DropdownMenuItem<String>(
                    child: Text('$item1'),
                    value: item1,
                  );
                }).toList(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
                isExpanded: true,
                value: selectedItem1,
                onChanged: (String string) => setState(() => selectedItem1 = string),
                selectedItemBuilder: (BuildContext context) {
                  return items1.map<Widget>((String item1) {
                    return Text("Mathematical Algorithms");
                  }).toList();
                },
                items: items1.map((String item1) {
                  return DropdownMenuItem<String>(
                    child: Text('$item1'),
                    value: item1,
                  );
                }).toList(),
              ),
            ),
          ]),
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                snap: true,
                floating: true,
                forceElevated: boxIsScrolled,
                backgroundColor: Colors.green[700],
                // leading: IconButton(
                //   icon: Icon(Icons.menu),
                // ),
                title: Text(
                  'GeeksforGeeks',
                  style: TextStyle(fontSize: 30),
                ),
                actions: [IconButton(icon: Icon(Icons.search))],
                expandedHeight: 2 * kToolbarHeight,
              )
            ];
          },
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
              },),
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
                
              ),
            ])));
  }
}