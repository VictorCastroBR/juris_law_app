import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/profile_member.dart';

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
