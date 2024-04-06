import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  @override
  _MeuApp createState() => _MeuApp();
}

class _MeuApp extends State<MeuApp> {
  var contador = 0;
  bool test = true;
  var truco = 'adfa';
  var color = Colors.black;
  var color2 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu App'),
        ),
        body: Column(children: [
          Text(truco),
          const Text('Olá, mundo!'),
          Text(contador.toString(), style: const TextStyle(fontSize: 30)),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (test) {
                    contador++;
                  } else {
                    contador--;
                  }
                });
              },
              child: const Text('Clique aqui!'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (test) {
                    test = false;
                  } else {
                    test = true;
                  }
                });
              },
              child: const Text('troque para alterar mais ou menos!'),
            ),
          ),
          Center(
            child: IconButton(
              onPressed: () {
                setState(() {
                  contador++;
                  color2 = Colors
                      .primaries[Random().nextInt(Colors.primaries.length)];
                });
              },
              icon: Icon(
                Icons.add,
                color: color,
                size: 50,
              ),
            ),
          ),
          Center(
            child: IconButton(
              onPressed: () {
                setState(() {
                  contador--;
                  color = Colors
                      .primaries[Random().nextInt(Colors.primaries.length)];
                });
              },
              icon: Icon(
                Icons.remove,
                color: color2,
                size: 50,
              ),
            ),
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite algo',
            ),
            onChanged: (text) {
              setState(() {
                truco = text;
              });
            },
          ),
        ]),
      ),
    );
  }
}
