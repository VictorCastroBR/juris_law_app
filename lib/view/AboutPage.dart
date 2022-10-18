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
          'Sobre nos',
        ),
      ),
      body: Container(
        child: Column(
          children: [Text('Vivi')],
        ),
      ),
    );
  }
}
