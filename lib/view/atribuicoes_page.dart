import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';

class AtribuicoesPage extends StatefulWidget {
  @override
  State<AtribuicoesPage> createState() {
    return AtribuicoesPageState();
  }
}

class AtribuicoesPageState extends State<AtribuicoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atribuições'),
        backgroundColor: Color.fromARGB(255, 65, 121, 100),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      //CORPO
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Atribuir pesquisa:",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 116, 113, 113),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Form(
              child: Column(children: [
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Numero do processo: ",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 116, 113, 113),
                    ),
                    prefixIcon: Icon(
                      Icons.format_list_numbered_sharp,
                      color: Color.fromARGB(255, 116, 113, 113),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 116, 113, 113),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 116, 113, 113),
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Periodo:",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 116, 113, 113),
                    ),
                    prefixIcon: Icon(
                      Icons.date_range_outlined,
                      color: Color.fromARGB(255, 116, 113, 113),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 116, 113, 113),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 116, 113, 113),
                      ),
                    ),
                  ),
                ),
                TextDropdownFormField(
                  options: ["Victor", "Viviane"],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      labelText: "Atribuir",
                      focusColor: Color.fromARGB(255, 116, 113, 113)),
                  dropdownHeight: 120,
                ),
              ]),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                child: Text('Enviar'),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                }),
          ],
        ),
      ),
    );
  }
}
