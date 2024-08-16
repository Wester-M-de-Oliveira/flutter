import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 150,
        leading: Container(
          margin: const EdgeInsets.only(left: 16),
          padding: const EdgeInsets.fromLTRB(8,0,5,0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(1000),
          ),
          child: const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/perfil.png'),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Leonardo',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Define a cor de fundo cinza
              shape: BoxShape.circle, // Define a forma circular
            ),
            child: IconButton(
              icon: const Icon(Icons.notifications_outlined, color: Colors.black),
              onPressed: () {
                // Ação do ícone de notificação
              },
            ),
          )
        ],
      ),
      body: Padding(
        // padding: const EdgeInsets.symmetric(horizontal: 16.0),
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Explore o',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Text('Belo mundo ', style: TextStyle(fontSize: 35)),
                  Column(
                    children: [
                      const Text('world!', style: TextStyle(fontSize: 35,color: Color(0xFFFF7029))),
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
              const SizedBox(height: 35),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Melhor destino',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'Ver tudo',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 420,
                child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DestinationCard(
                    assetImage: 'assets/images/espanha.png',
                    title: 'Espanha',
                    location: 'Madrid, Espanha',
                    rating: 4.7,
                  ),
                  DestinationCard(
                    assetImage: 'assets/images/france.png',
                    title: 'França',
                    location: 'Paris, França',
                    rating: 4.8,
                  ),
                ],
              ),
              ),
            ],
          ),
        ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String assetImage;
  final String title;
  final String location;
  final double rating;

  DestinationCard({
    required this.assetImage,
    required this.title,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[100],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Center(
                child: Image.asset(
                  assetImage,
                  fit: BoxFit.fitWidth,
                  width: 280,
                ),
              )
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: Color.fromARGB(255, 255, 230, 0), size: 16),
                  const SizedBox(width: 4),
                  Text(
                    '$rating', // Quantidade de estrelas
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.black87, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        location,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage('assets/images/perfil.png'),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage('assets/images/perfil.png'),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage('assets/images/perfil.png'),
                      ),
                      Text(
                        '+3',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
