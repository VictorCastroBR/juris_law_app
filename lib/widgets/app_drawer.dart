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
          leading: Icon(Icons.people_alt),
          title: Text('Equipe'),
          onTap: () => Navigator.of(context).pushNamed('/equipe'),
        ),
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Jurisprudência'),
          onTap: () => Navigator.of(context).pushNamed('/jurisprudencia'),
        ),
        ListTile(
          leading: Icon(Icons.calendar_month),
          title: Text('Atribuições'),
          onTap: () => Navigator.of(context).pushNamed('/atribuicoes'),
        ),
        ListTile(
          leading: Icon(Icons.add_box_rounded),
          title: Text('Coleções'),
          onTap: () => Navigator.of(context).pushNamed('/notificacoes'),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('Sobre'),
          onTap: () => Navigator.of(context).pushNamed('/sobre'),
        ),
        ListTile(
          leading: Icon(Icons.logout, color: Color.fromARGB(255, 230, 102, 93)),
          title: Text('Sair'),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Deseja sair?'),
              actions: <Widget>[
                TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 168, 74, 74))),
                    child: const Text('Não',
                        style: TextStyle(color: Colors.white))),
                TextButton(
                    onPressed: () =>
                        Navigator.of(context).pushReplacementNamed('/'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 92, 158, 131))),
                    child: const Text(
                      'Sim',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
