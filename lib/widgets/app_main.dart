import 'package:flutter/material.dart';
import 'package:juris_law_app/view/add_member_page.dart';
import 'package:juris_law_app/view/atribuicoes_page.dart';
import 'package:juris_law_app/view/equipe_page.dart';
import 'package:juris_law_app/view/criar_conta_page.dart';
import 'package:juris_law_app/view/login_page.dart';
import 'package:juris_law_app/view/pesquisa_page.dart';
import 'package:juris_law_app/view/about_page.dart';
import 'package:juris_law_app/view/colecoes.dart';
import 'package:juris_law_app/view/menu_page.dart';

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
        '/': (context) => LoginPage(),
        '/criar_conta': (context) => CriarContaPage(),
        '/menu': (context) => MenuPage(),
        '/sobre': (context) => AboutPage(),
        '/adicionar-membro': (context) => AddMemberPage(),
        '/atribuicoes': (context) => AtribuicoesPage(),
        '/equipe': (context) => EquipePage(),
        '/jurisprudencia': (context) => PesquisaPage(),
        '/notificacoes': (context) => ColecoesPage(),
      },
    );
  }
}
