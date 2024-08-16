import 'package:flutter/material.dart';
import 'home.dart';

class DetailsSpainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/espanhadetalhes.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                ),
                const Positioned(
                  top: 40,
                  right: 16,
                  child: Icon(Icons.bookmark_border, color: Colors.white),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Título e avatar
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Espanha',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                Text(
                                  'Madrid, Espanha',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/perfil.png'),
                              radius: 24.0,
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        // Localização, Avaliação e Preço
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.grey),
                                SizedBox(width: 4.0),
                                Text('Madrid'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber),
                                SizedBox(width: 4.0),
                                Text('4.7 (2498)'),
                              ],
                            ),
                            Text(
                              '\$6459/pessoa',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        // Imagens de exemplo
                        SizedBox(
                          height: 60.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              exampleImage('assets/images/perfil.png'),
                              exampleImage('assets/images/perfil.png'),
                              exampleImage('assets/images/perfil.png'),
                              exampleImage('assets/images/perfil.png'),
                              exampleImage('assets/images/perfil.png'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        // Sobre o Destino
                        const Text(
                          'About Destination',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          'Madri, a capital da Espanha, situada no centro do país, é uma cidade de avenidas elegantes e parques grandes e bem cuidados, como o Buen Retiro.',
                          style: TextStyle(
                            color: Colors.grey,
                            height: 1.9
                            ),
                        ),
                        const Spacer(), // Empurra o botão para o fundo
                        // Botão Agende Agora
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Ação do botão
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'Agende agora',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget exampleImage(String asset) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          asset,
          width: 60.0,
          height: 60.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
