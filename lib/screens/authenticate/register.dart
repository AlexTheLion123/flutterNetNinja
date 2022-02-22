import 'package:flutter/material.dart';
import 'package:netninja/services/auth.dart';

class Register extends StatefulWidget {
  Register({Key? key, required this.toggleView}) : super(key: key);

  final Function toggleView;

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign up to Brew Crew'),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () {
              widget.toggleView();
            },
            icon: const Icon(Icons.person),
            label: const Text('Sign in'),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20.0),
              TextFormField(
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Register'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pink[400]),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(color: Colors.white))),
                onPressed: () async {
                  print(email);
                  print(password);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
