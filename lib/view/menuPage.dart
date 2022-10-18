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
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'lib/src/images/henrycavill.jpg',
                    ),
                  ),
                ),
                Text('Admin')
              ],
            ),
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {},
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text('Áreas de Interesse'),
                    );
                  },
                  body: ListTile(
                    title: Text('Teste'),
                    subtitle: Text('Subtext'),
                  ),
                  isExpanded: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
