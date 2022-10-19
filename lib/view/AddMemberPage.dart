import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMemberPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddMemberPageState();
  }
}

class AddMemberPageState extends State<AddMemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar membro a equipe'),
        backgroundColor: Color.fromARGB(255, 65, 121, 100),
      ),
      body: Column(
        children: [Text('Adicionar novos membros')],
      ),
    );
  }
}
