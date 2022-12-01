import 'package:flutter/cupertino.dart';

class CredentialModel extends ChangeNotifier {
  String? name;
  List<String> listVagas = [];
  final TextEditingController nameAreaController;

  CredentialModel({
    this.name,
    required this.nameAreaController,
  });

  addListObject(value){
    listVagas.add(value);
    notifyListeners();
  }

  clearList(){
    listVagas.clear();
  }

  noft(){
    notifyListeners();
  }
}