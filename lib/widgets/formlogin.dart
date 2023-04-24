import 'package:capricornio/widgets/input.dart';
import 'package:flutter/material.dart';

class FormApp extends StatefulWidget {
  const FormApp({super.key});

  @override
  State<FormApp> createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: const <Widget>[
          InputApp(
            label: 'email address',
            hint: 'email address',
            icono: Icon(Icons.verified_user),
            keyboard: TextInputType.emailAddress,
            onchanged: (data) { _email = data;},
            validator: (data) { if(!data.contains('@')){ return "invalid email"; } return null;},
          )
        ],
      )
    );
  }
}