import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juris_law_app/view/cadastro.dart';
import 'package:juris_law_app/view/login.dart';

import '../view/menuPage.dart';

class AppMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Juris Law',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginView(),
        '/cadastro': (context) => CadastroView(),
        '/menu': (context) => MenuPage(),
      },
    );
  }
}
