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
        child: Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Row(
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
              ),
              Container(height: 30), // Space
              ExpansionAreaWidget(),
            ],
          ),
        ),
      ),
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
    return Text('...');
  }
}
