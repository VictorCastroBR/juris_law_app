import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class User {
  Future<String> retornaFuncionarioLogado() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    // ignore: prefer_typing_uninitialized_variables
    var res;
    await FirebaseFirestore.instance
        .collection('usuarios')
        .where('uid', isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs[0].data()['nome'];
        } else {
          res = "";
        }
      },
    );
    return res;
  }
}

class MenuAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        FutureBuilder(future: ,builder: (context, snapshot) {
          return UserAccountsDrawerHeader(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 140, 228, 185)),
            currentAccountPicture: ClipOval(
              child: Container(color: Colors.white),
            ),
            accountName: Text(User().retornaFuncionarioLogado().toString()),
            accountEmail: Text('admin@gmail.com'),
          );
        }),
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
