import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "FlutNav",
          style: TextStyle(
            color: Colors.white70,
            letterSpacing: 0,
            fontSize: 40,
            shadows: [
              Shadow(
                offset: Offset(6, 6),
                color: Colors.black38,
                blurRadius: 10,
              ),
              Shadow(
                offset: Offset(-3, -3),
                color: Colors.deepOrange.withOpacity(0.85),
                blurRadius: 10,
              )
            ],
          ),
        ),
        titleSpacing: 1,
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [

        ],),
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepOrangeAccent, Colors.deepOrange]),
        ),
      ),
    bottomNavigationBar: CurvedNavigationBar(

    index: 2,
    height: 50.0,
    items: <Widget>[
    Icon(Icons.add, size: 35,color:Colors.deepOrange),
    Icon(Icons.list, size: 35,color:Colors.deepOrange),
    Icon(Icons.camera, size: 35,color:Colors.deepOrange),
    Icon(Icons.favorite, size: 35,color:Colors.deepOrange),
    Icon(Icons.perm_identity, size: 35,color:Colors.deepOrange),
    ],
    color: Colors.white,
    buttonBackgroundColor: Colors.white,
    backgroundColor: Colors.deepOrange,
    animationCurve: Curves.easeInOut,
    animationDuration: Duration(milliseconds: 600),
      onTap: (index){

      },
    ),);
  }
}
