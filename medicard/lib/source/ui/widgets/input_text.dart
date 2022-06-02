import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final Icon icono;
  final TextInputType keyboard;
  final bool obsecure;
  final void Function(String data) onChanged;
  //final String Function(String data) validator;

  const InputText({Key? key,
    required this.label,
    required this.hint,
    required this.icono,
    required this.keyboard,
    required this.obsecure,
    required this.onChanged
    /*required this.validator*/})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: keyboard,
        obscureText: obsecure,
        onChanged: onChanged,
        //validator: validator,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 15.0
          ),
        )
      )
    );
  }
}
