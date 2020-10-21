import 'package:flutter/material.dart';

//import "package:drop_cap_text/drop_cap_text.dart";
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application/custom_icons.dart';

void main() => runApp(MaterialApp(
      title: 'Navigation Basics',
      home: FlutterApplication(),
    ));

class FlutterApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              Spacer(),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('My App'),
          leading: GestureDetector(
//            onTap: () { /* Write listener code here */ },
            child: Icon(Icons.account_balance,
                size: 50.0,
//              CustomIcons.lkdto,
                color: Colors.yellowAccent // add custom icons also
                ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
            IconButton(
                icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
            IconButton(
                icon: Icon(
              Icons.menu,
              color: Colors.white,
            ))
          ],
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/image/stone.jpg',
                          width: 70.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        child: Text('Open'),
                        color: Colors.blue,
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/image/stone.jpg',
                          width: 70.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        child: Text('Open'),
                        color: Colors.blue,
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/image/stone.jpg',
                          width: 70.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        child: Text('Open'),
                        color: Colors.blue,
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/image/stone.jpg',
                          width: 70.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        child: Text('Open'),
                        color: Colors.blue,
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/image/stone.jpg',
                          width: 70.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        child: Text('Open'),
                        color: Colors.blue,
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/image/stone.jpg',
                          width: 70.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        child: Text('Open'),
                        color: Colors.blue,
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/image/stone.jpg',
                          width: 70.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        child: Text('Open'),
                        color: Colors.blue,
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/image/stone.jpg',
                          width: 70.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        child: Text('Open'),
                        color: Colors.blue,
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/image/stone.jpg',
                          width: 70.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        child: Text('Open'),
                        color: Colors.blue,
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/image/stone.jpg',
                          width: 70.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        child: Text('Open'),
                        color: Colors.blue,
                        onPressed: () {
                          // Navigate to second route when tapped.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        },
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              Spacer(),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Second Route"),
        ),
        body: Center(
          child: Stack(children: [
            Align(alignment: Alignment.topLeft),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/image/stone.jpg',
                width: 170.0,
                height: 100.0,
                fit: BoxFit.fill,
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: FlatButton(
                child: Text('use this'),
                color: Colors.blue,
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FlutterApplication()),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text('remember'),
                color: Colors.blue,
                onPressed: () {
                  // Navigate to second route when tapped.
                },
              ),
            )
          ]),
        ));
  }
}
