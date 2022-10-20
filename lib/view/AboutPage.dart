import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/MenuAppBar.dart';

class AboutPage extends StatefulWidget {
  @override
  State<AboutPage> createState() {
    return AboutPageState();
  }
}

class AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuAppBar(),
      appBar: AppBar(
        title: Text(
          'Sobre',
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(255, 233, 223, 223),
                  Color.fromARGB(255, 112, 182, 106)
                ])),
            child: Container(
              width: double.infinity,
              height: 350.0,
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DevProfile(
                          name: "Viviane Alves",
                          image: " ",
                        ),
                        DevProfile(
                          name: "Victor Castro",
                          image: " ",
                        ),
                      ],
                    ),
                    Text(
                      'O Jurislaw é um aplicativo de pesquisa jurisprudencial. \n'
                      'Seu objetivo é unificar jurisprudências de diversos tribunais do Brasil em uma única ferramenta e notificar novas decisões.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DevProfile extends StatelessWidget {
  final String name;
  final String image;

  const DevProfile({super.key, this.name = "", this.image = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
            image,
          ),
          radius: 50.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
