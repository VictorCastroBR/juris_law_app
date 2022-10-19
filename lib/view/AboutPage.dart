import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/MenuAppBar.dart';

class AboutPage extends StatefulWidget {
  @override
  State<AboutPage> createState() {
    return AboutPageState();
  }
}

class AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuAppBar(),
      appBar: AppBar(
        title: Text(
          'Sobre',
        ),
        backgroundColor: Color.fromARGB(255, 65, 121, 100),
      ),
      backgroundColor: Color(0xFF7AAA98),
      body: Container(
        child: Column(
          children: [
            Text(
              'O Jurislaw é um aplicativo de pesquisa jurisprudencial. \n'
              'Seu objetivo é unificar jurisprudências de diversos tribunais do Brasil em uma única ferramenta e notificar novas decisões.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold, 
                ),
              ),
            ],
        ),
      ),
    );
  }
}
