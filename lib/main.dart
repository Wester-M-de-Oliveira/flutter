// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Formulario());
}

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: ListView(
              padding: EdgeInsets.all(35),
              children: [
                Center(
                  child: Text('Faça seu login',
                      style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 20),
                Text('Faça login para continuar nosso aplicativo'),
                SizedBox(height: 30),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                      TextFormField(
                        decoration: InputDecoration(hintText: 'informe o gmail', border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Informe o seu nome';
                          }
                        }),
                        SizedBox(height: 25),
                        TextFormField(
                        decoration: InputDecoration(hintText: 'informe o gmail', border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)), suffix: Text('Suffix')),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Informe a senha';
                          }
                        })
                        ],)),

                ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()) {

                    }
                  },
                  child: const Text('troque para alterar mais ou menos!'),
                ),

              ],
            )));
  }
}
