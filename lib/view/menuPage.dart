import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/MenuAppBar.dart';
import '../widgets/ProfileMember.dart';

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
        backgroundColor: Color.fromARGB(255, 65, 121, 100),
      ),
      body: ListView(
        children: [
          Container(height: 10),
          UserHeader(),
          Container(height: 10),
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
    return ListTile(
      leading: CircleAvatar(
        radius: 30.0,
        backgroundColor: Colors.blue[100],
        backgroundImage: NetworkImage(
          'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-512.png',
        ),
      ),
      title: Text('Admin'),
      subtitle: Text('admin@gmail.com'),
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
                  }),
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
        ),
        Container(height: 30),
        ProfileMember(
          name: 'Victor',
          occupation: 'Lindo',
        ),
        ProfileMember(
          name: 'Viviane',
          occupation: 'Advogada Civil',
        ),
        ProfileMember(
          name: 'Gabriela',
          occupation: 'Assistente jurídico',
        ),
        ProfileMember(name: 'Bia'),
        ProfileMember(
          name: 'José',
          occupation: 'Estagiário',
        ),
      ],
    );
  }
}
