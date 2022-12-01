import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../widgets/app_drawer.dart';

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
        backgroundColor: Color.fromARGB(255, 65, 121, 100),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Container(
              width: double.infinity,
              height: 350.0,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    child: Text(
                      'Desenvolvedores',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Color.fromARGB(255, 65, 121, 100),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DevProfile(
                        name: "Viviane Alves",
                        image:
                            "https://media-exp1.licdn.com/dms/image/C4D03AQFu30zedaHnxA/profile-displayphoto-shrink_800_800/0/1612791465780?e=1671667200&v=beta&t=36Jhj6PEsRFGoHU-dwJPw7zW4xp5Zu5XfqzT7aZYArA",
                      ),
                      DevProfile(
                        name: "Victor Castro",
                        image:
                            "https://media-exp1.licdn.com/dms/image/C4E03AQG-smg3iTBieg/profile-displayphoto-shrink_800_800/0/1644150259469?e=1671667200&v=beta&t=s3-6asSXQMh5IjDJQz1Z243IZh1n8FYQKOT8XpNvf5w",
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: 20.0, left: 20.0, top: 90.0),
                    child: Text(
                      'O Jurislaw é um aplicativo de pesquisa jurisprudencial. \n'
                      'Seu objetivo é unificar jurisprudências de diversos tribunais do Brasil em uma única ferramenta e notificar novas decisões.',
                      style: TextStyle(
                        color: Color.fromARGB(255, 49, 49, 49),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
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
