// ignore_for_file: prefer_const_constructors

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'pageview.dart';

void main() {
  runApp(Formulario());
}

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
            appBar: AppBar(),
            body: Stack(
              children: [ 
            ListView(
              padding: EdgeInsets.all(35),
              children: [
                SizedBox(height: 25),
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
                        decoration: InputDecoration(
                          hintText: 'informe o email',
                          filled: true,
                          fillColor: const Color(0xFFF7F7F9),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Informe o seu nome';
                          }
                        }
                      ),
                      SizedBox(height: 35),
                      TextFormField(
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                          hintText: 'informe a senha',
                          filled: true,
                          fillColor: const Color(0xFFF7F7F9),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Informe a senha';
                          }
                          return null;
                        },
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Esqueceu a senha?',
                          style: TextStyle(color: Colors.blue)),
                        ),
                      ),
                      SizedBox(height: 25),
                      Builder(
                        builder: (context) => ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PageViewApp()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                            minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 65)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ), 
                          ),
                          child: const Text('Entrar', style: TextStyle(color: Colors.white)),
                        ),
                      )
                    ],
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Não tem uma conta?'),
                    TextButton(
                      onPressed: () {},
                      child: Text('Cadastre-se',
                      style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook, size: 60, color: Color(0xFF1877F2)),
                      onPressed: () {
                        // Handle Facebook button press
                      },
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      margin: EdgeInsets.fromLTRB(15,0,20,0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: const [
                            Color(0xFFFFD521),
                            Color(0xFFFFD521),
                            Color(0xFFF50000),
                            Color(0xFFB900B4),
                            Color(0xFFB900B4),
                          ],
                          stops: const [
                            0.0,
                            0.05,
                            0.5,
                            0.95,
                            1.0,
                          ],
                        ),
                      ),
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.instagram, size: 30),
                        color: Colors.white,
                        onPressed: () {
                          // Handle Instagram button press
                        },
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFF03A9F4),
                      radius: 30,
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.twitter, size: 30, color: Colors.white),
                        color: Colors.white,
                        onPressed: () {
                          // Handle Instagram button press
                        },
                      ),
                    ),
                  ],
                ))  ,)
            ])));
  }
}
