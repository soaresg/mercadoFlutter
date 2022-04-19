// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController? controlador;
  final String? rotulo;

  Editor({this.controlador, this.rotulo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 14.0),
        decoration: InputDecoration(
          labelText: rotulo,
        ),
        keyboardType:
            rotulo == 'Nome' ? TextInputType.text : TextInputType.number,
      ),
    );
  }
}
