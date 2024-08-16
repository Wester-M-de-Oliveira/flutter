import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'home.dart';

class DetailsSpainApp extends StatefulWidget {
  @override
  _DetailsSpainAppState createState() => _DetailsSpainAppState();
}

class _DetailsSpainAppState extends State<DetailsSpainApp> {
  final _pageController = PageController();
  double _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  child: Image.asset(
                    'assets/images/pageview2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                      side: BorderSide(color: Colors.transparent),
                    ),
                  ),
                  child: const Text('Skip',   style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          const Center(child: Text('É um mundo grande lá', style: TextStyle(fontSize: 30))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('fora, vá ', style: TextStyle(fontSize: 30)),
              Column(
                children: [
                  Text('explorar', style: TextStyle(fontSize: 30,color: Color(0xFFFF7029))),
                  Container(
                    child: Image.asset(
                      'assets/images/explorar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 8),
          const Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(40,0,40 ,0),
              child: Text(
                'Para aproveitar ao máximo sua aventura você só precisa sair e ir para onde quiser. estamos esperando por você',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  height: 1.9, // Aumenta o espaçamento entre as linhas
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}