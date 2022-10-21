import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/profile_member.dart';

class EquipePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EquipePageState();
  }
}

class EquipePageState extends State<EquipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuAppBar(),
      appBar: AppBar(
        title: Text('Equipe'),
        backgroundColor: Color.fromARGB(255, 65, 121, 100),
      ),
      body: ListView(
        children: [
          DivTeamWidget(),
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
