import 'dart:html';

import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical:30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF7AAA98), Color(0xFF7AAA98)]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
              child: Column(
                children: [
                  TextFormField(
                    autofocus: true, 
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: Icon (
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
                      prefixIcon: Icon (
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
                    ]   
                ),
              ),
              Padding(
                padding: EdgeInsets.only(button: 10)
              ),
              GestureDetector(
                onTap: (),
                child: Text(
                "Esqueceu a senha?",
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 12),
                textAlign: TextAlign.right,
              ),
            ),
          ],
          ),
        ),
      );
    }
  }
