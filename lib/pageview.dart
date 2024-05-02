import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class PageViewApp extends StatefulWidget {
  @override
  _PageViewAppState createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  final _pageController = PageController();
  double _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              ListView(
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
                            'assets/images/pageview1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: TextButton(
                          onPressed: () {
                            // Adicione a ação do botão aqui
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
                  const Center(child: Text('A vida é curta e o', style: TextStyle(fontSize: 30))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('mundo é ', style: TextStyle(fontSize: 30)),
                      Column(
                        children: [
                          Text('vasto', style: TextStyle(fontSize: 30,color: Color(0xFFFF7029))),
                          Container(
                            child: Image.asset(
                              'assets/images/vetorVasto.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(50,0,50 ,0),
                      child: Text(
                        'Na Frends tours and travel, personalizamos passeios educacionais confiáveis para destinos em todo o mundo',
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
              Container(color: Colors.green),
              Container(color: Colors.blue),
            ],
            onPageChanged: (int page) {
              setState(() {
                _currentPageIndex = page.toDouble();
              });
            },
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: DotsIndicator(
                dotsCount: 3,
                position: _currentPageIndex.toInt(),
                decorator: DotsDecorator(
                  activeColor: Colors.blue,
                  size: const Size.square(9.0),
                  activeSize: const Size(30.0, 9.0),
                  color: Colors.grey,
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  spacing: const EdgeInsets.all(4.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}