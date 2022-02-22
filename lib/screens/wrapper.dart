import 'package:flutter/material.dart';
import 'package:netninja/models/myuser.dart';
import 'package:netninja/screens/authenticate/authenticate.dart';
import 'package:netninja/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);

    if (user == null) {
      return const Authenticate();
    } else {
      return Home();
    }
  }
}
