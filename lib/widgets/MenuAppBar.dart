import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: ClipOval(
            child: Container(color: Colors.white),
          ),
          accountName: Text('admin'),
          accountEmail: Text('admin@gmail.com'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.of(context).pushNamed('/menu');
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('Sobre'),
          onTap: () {
            Navigator.of(context).pushNamed('/sobre');
          },
        ),
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Jurisprudência'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.calendar_month),
          title: Text('Atribuições'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.notifications_active),
          title: Text('Notificações'),
          onTap: () {},
        ),
      ]),
    );
  }
}
