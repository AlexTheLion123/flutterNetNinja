import 'package:flutter/material.dart';
import 'package:netninja/screens/authenticate/authenticate.dart';
import 'package:netninja/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return either home or authenticate widget
    return Authenticate();
  }
}
