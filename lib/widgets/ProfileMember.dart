import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMember extends StatelessWidget {
  final String name;
  final String occupation;

  const ProfileMember({
    super.key,
    required this.name,
    this.occupation = 'Não especificado',
  });

  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 70.0,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(name),
              subtitle: Text(occupation),
            )),
      ),
    );
  }
}
