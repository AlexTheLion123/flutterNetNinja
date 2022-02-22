import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:netninja/models/myuser.dart';
import 'package:netninja/screens/wrapper.dart';
import 'package:netninja/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      initialData: null,
      value: AuthService().user,
      child: const MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
