import 'package:flutter/material.dart';

import '../widgets/formlogin.dart';


class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 181, 171, 226),
      body:ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 80.0
        ),
        children: const <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,       
            children:[
              CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/logo.png'),
         ),
         Text(
          'login',
          style: TextStyle(
            fontFamily: 'dynapuff',
            fontSize: 50.0,
            color: Color.fromARGB(255, 39, 39, 43)
          ),
         ),
        SizedBox(
          width: 250.0,
          height: 35.0,
          child: Divider(
            color: Color.fromARGB(255, 76, 76, 83)
          ),
         ),
         FormApp()
            ],
          )
        ],
      ),
    );

  }
}