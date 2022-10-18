import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/MenuAppBar.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() {
    return MenuPageState();
  }
}

class MenuPageState extends State<MenuPage> {
  @override
  Widget build(Object context) {
    return Scaffold(
      drawer: MenuAppBar(),
      appBar: AppBar(
        title: Text('JurisLaw'),
      ),
      body: Container(
        child: Column(
          children: [Text('Teste')],
        ),
      ),
    );
  }
}
