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
            color: const Color.fromARGB(255, 239, 239, 240),
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
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {
              // Ação do ícone de notificação
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Explore o',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      'Belo mundo ',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'world!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
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
              Container(
                height: 250,
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
                    // Adicione mais cards conforme necessário
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
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
      width: 200,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          // image: AssetImage(assetImage),
          image: AssetImage('assets/images/pageview3.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 16,
            right: 16,
            child: Icon(Icons.bookmark_border, color: Colors.white),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  location,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '$rating',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
