import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:juris_law_app/models/credential_provider.dart';
import 'package:provider/provider.dart';

ChangeNotifierProvider credentialModelProvider = ChangeNotifierProvider<CredentialModel>(
  create: ((context) => CredentialModel(
    nameAreaController: TextEditingController(),
  ))
);