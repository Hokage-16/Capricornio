import 'package:flutter/material.dart';

class InputApp extends StatelessWidget {
  final String label;
  final String hint;
  final Icon icono;
  final TextInputType keyboard;
  final bool obsecure;
  final void Function(String data) onchanged;
  final String? Function(String?) validator;
  const InputApp({
    Key? key,
    this.label = '',
    this.hint = '',
    required this.icono,
    this.keyboard = TextInputType.text,
    this.obsecure = false,
    required this.validator,
    required this.onchanged,
  }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard,
      obscureText: obsecure,
      onChanged: onchanged,
      validator: validator,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        labelStyle: const TextStyle(
          color:Colors.blueAccent,
          fontFamily: 'fredokaOne',
          fontSize: 15.0
        ),
        suffixIcon: icono,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        )
      ),
    );
  }
}