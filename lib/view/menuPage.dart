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
      body: ListView(
        children: [
          UserHeader(),
          Container(height: 30),
          ExpansionAreaWidget(),
          Container(height: 30),
          DivTeamWidget(),
        ],
      ),
    );
  }
}

class UserHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Container(
            width: 100.0,
            height: 100.0,
            child: Image.asset(
              'lib/src/images/henrycavill.jpg',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              Text('Admin'),
              Text('Escritório'),
            ],
          ),
        )
      ],
    );
  }
}

class ExpansionAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: ExpansionTile(
        initiallyExpanded: true,
        title: Text('Áreas de interesse'),
        children: [
          ListTile(
            leading: Icon(Icons.balance_outlined),
            title: Text('D. Civil'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.balance_outlined),
            title: Text('D. Penal'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.balance_outlined),
            title: Text('D. Previdênciário'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class DivTeamWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Equipe',
                style: TextStyle(fontSize: 20.0),
              ),
              GestureDetector(
                child: Text(
                  '+Adicionar',
                  style: TextStyle(fontSize: 20.0, color: Colors.orange[600]),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/adicionar-membro');
                },
              ),
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
              labelText: 'Pesquisar por',
            ),
          ),
        )
      ],
    );
  }
}
