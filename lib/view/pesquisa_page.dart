import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class PesquisaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PesquisaPageState();
  }
}

class PesquisaPageState extends State<PesquisaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuAppBar(),
      appBar: AppBar(
        title: Text('Pesquisa Jurisprudencial'),
        backgroundColor: Color.fromARGB(255, 65, 121, 100),
      ),
      body: ListView(
        children: [
          DivPesqWidget(),
        ],
      ),
    );
  }
}

class DivPesqWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(''),
            ],
          ),
        ),
        Container(height: 30),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              labelText: 'Palavras-chave',
            ),
          ),
        ),
        Container(height: 30),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              labelText: 'Relator',
            ),
          ),
        ),
        Container(height: 30),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              labelText: 'Ano',
            ),
          ),
        ),
        Container(height: 30),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              labelText: 'Estado',
            ),
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(
            child: Text('Pesquisar'),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('');
            }),
      ],
    );
  }
}
