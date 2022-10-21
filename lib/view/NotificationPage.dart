import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/MenuAppBar.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() {
    return NotificationPageState();
  }
}

class NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuAppBar(),
      appBar: AppBar(
        title: Text('Notificações'),
        backgroundColor: Color.fromARGB(255, 65, 121, 100),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('MINHAS COLEÇÕES'),
          ),
          Notofication(
            name: 'Victor',
            number: '4',
            type: 'ICMS',
          ),
          Notofication(
            name: 'Viviane',
            number: '3',
            type: 'ICMS',
          ),
          Notofication(
            name: 'Marcos',
            number: '6',
            type: 'ICMS',
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('COLEÇÕES COMPARTILHADAS '),
          ),
          Notofication(
            name: 'Bia',
            number: '4',
            type: 'ICMS',
          ),
          Notofication(
            name: 'Gabriel',
            number: '3',
            type: 'ICMS',
          ),
          Notofication(
            name: 'Pedro',
            number: '6',
            type: 'ICMS',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Text(
                '+ CRIAR COLEÇÃO',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Notofication extends StatelessWidget {
  final String name;
  final String number;
  final String type;

  const Notofication(
      {super.key, this.name = '', this.number = '0', this.type = ''});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(name),
        subtitle: Text('Arquivos: $number'),
        trailing: Text(type),
      ),
    );
  }
}
