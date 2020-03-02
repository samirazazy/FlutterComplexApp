import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import './pages/ItemOne.dart';
import './pages/ItemTow.dart';
import './pages/ItemThree.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indexpage = 1;
  final pageOption = [
    ItemOne(),
    Itemtow(),
    ItemThree(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('new App'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: pageOption[_indexpage],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.deepOrange,
        buttonBackgroundColor: Colors.amber,
        backgroundColor: Colors.grey,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        index: 1,
        onTap: (index) {
          setState(() {
            _indexpage = index;
          });
        },
        items: <Widget>[
          Icon(
            Icons.pool,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.comment,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
