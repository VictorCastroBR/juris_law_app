import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Color.fromARGB(255, 140, 228, 185)),
          currentAccountPicture: ClipOval(
            child: Container(color: Colors.white),
          ),
          accountName: Text('admin'),
          accountEmail: Text('admin@gmail.com'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () => Navigator.of(context).pushNamed('/menu'),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('Sobre'),
          onTap: () => Navigator.of(context).pushNamed('/sobre'),
        ),
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Jurisprudência'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.calendar_month),
          title: Text('Atribuições'),
          onTap: () => Navigator.of(context).pushNamed('/atribuicoes'),
        ),
        ListTile(
          leading: Icon(Icons.notifications_active),
          title: Text('Notificações'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.logout, color: Colors.red),
          title: Text('Sair'),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Você deseja sair?'),
              actions: <Widget>[
                TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel',
                        style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 0, 0)))),
                TextButton(
                    onPressed: () =>
                        Navigator.of(context).pushReplacementNamed('/'),
                    child: const Text('Sim',
                        style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 0, 255, 4)))),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
