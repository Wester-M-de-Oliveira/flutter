import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final _pageController = PageController();
  // double _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Text('Home'),
        ],
      ),
    );
  }
}