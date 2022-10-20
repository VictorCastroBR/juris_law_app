import 'dart:html';

import 'package:flutter/material.dart';
import 'package:juris_law_app/view/cadastro.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 65, 121, 100),
      ),
      backgroundColor: Color(0xFF7AAA98),
      //CORPO
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(width: 250, height: 250, child: Image.asset("logo.png")),
            Text(
              "Entrar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Form(
              child: Column(children: [
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.white,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('');
              },
              child: Text(
                "Esqueceu a senha?",
                style: TextStyle(color: Colors.white, fontSize: 12),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 30),
            RaisedButton(
                child: Text('Logar'),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/menu');
                }),
            SizedBox(height: 30),
            RaisedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/cadastro');
                }),
          ],
        ),
      ),
    );
  }
}
