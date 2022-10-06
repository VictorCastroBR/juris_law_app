import 'package:flutter/material.dart';

void main() {
  runApp(JurisLawApp());
}

class JurisLawApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Text('teste'),
    ));
  }
}
