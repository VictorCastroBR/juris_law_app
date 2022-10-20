import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juris_law_app/view/AddMemberPage.dart';
import 'package:juris_law_app/view/AtribuicoesPage.dart';
import 'package:juris_law_app/view/EquipePage.dart';
import 'package:juris_law_app/view/CadastroPage.dart';
import 'package:juris_law_app/view/LoginPage.dart';

import '../view/AboutPage.dart';
import '../view/MenuPage.dart';

class AppMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Juris Law',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginView(),
        '/cadastro': (context) => CadastroView(),
        '/menu': (context) => MenuPage(),
        '/sobre': (context) => AboutPage(),
        '/adicionar-membro': (context) => AddMemberPage(),
        '/atribuicoes': (context) => AtribuicoesPage(),
        '/equipe': (context) => EquipePage(),
      },
    );
  }
}
