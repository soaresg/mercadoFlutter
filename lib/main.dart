// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/estoque.dart';

void main() => runApp(Estoque());

class Estoque extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormularioEstoque(),
    );
  }
}
