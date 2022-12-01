import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:juris_law_app/models/credential_provider.dart';
import 'package:juris_law_app/view/util.dart';
import 'package:provider/provider.dart';

import '../widgets/app_drawer.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() {
    return MenuPageState();
  }
}

class MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    CredentialModel credentialModel = context.read<CredentialModel>();
    int id;
    return Scaffold(
      drawer: MenuAppBar(),
      appBar: AppBar(
        title: Text('JurisLaw'),
        backgroundColor: Color.fromARGB(255, 65, 121, 100),
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection('usuarios')
            .where('uid', isEqualTo: uid)
            .get()
            .then(
          (q) {
            if (q.docs.isNotEmpty) {
              credentialModel.name = q.docs[0].data()['nome'];
            }
          },
        ),
        builder: ((context, snapshot) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: UserHeader()
                ),
                Expanded(
                  flex: 9,
                  child: ExpansionAreaWidget(),
                ),
              ],
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
              builder: (BuildContext context) {
                // retorna um objeto do tipo Dialog
                return AlertDialog(
                  title: const Text("Alterar nome"),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Insira a área',
                          ),
                          controller: credentialModel.nameAreaController,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Center(
                          child: TextButton(
                            child: Text('OK'),
                            onPressed: (){
                              FirebaseFirestore.instance.collection('areas')
                              .get()
                              .then((value) => {
                                if(value.docs.isNotEmpty){
                                  id = value.docs.length,
                                  id++,
                                  FirebaseFirestore.instance.collection('areas')
                                  .doc(id.toString())
                                  .set({
                                    'name': credentialModel.nameAreaController.text,
                                  }),
                                  Navigator.pop(context),
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
          );
        },
        child: Icon(Icons.add, color: Colors.black,),
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
    CredentialModel credentialModel = context.read<CredentialModel>();
    return Container(
      child: FutureBuilder(
        future: FirebaseFirestore.instance.collection('areas')
        .get()
        .then((value) => {
          if(value.docs.isNotEmpty){
            credentialModel.clearList(),
            // ignore: avoid_function_literals_in_foreach_calls
            value.docs.forEach((element) {
              credentialModel.addListObject(
                element.data()['name'],
              );
            })
          } else if (value.docs.isEmpty){
            // ignore: avoid_function_literals_in_foreach_calls
            value.docs.forEach((element) {
              credentialModel.addListObject(
                element.data()['name'],
              );
            })
          }
        }).catchError((e){
          erro(context, 'Vagas não disponíveis');
        }),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: credentialModel.listVagas.length,
            itemBuilder: ((context, index) {
              return Text(credentialModel.listVagas[index]);
            }),
          );
        },
      ),
    );
  }
}
