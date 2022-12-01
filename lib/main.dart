import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:juris_law_app/models/provider.dart';
import 'package:juris_law_app/widgets/app_main.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: providerList,
      child: AppMainWidget(),
    )
  );
}
