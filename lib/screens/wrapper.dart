import 'package:flutter/material.dart';
import 'package:netninja/models/myuser.dart';
import 'package:netninja/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);
    print(user);

    // return either home or authenticate widget
    return const Authenticate();
  }
}
