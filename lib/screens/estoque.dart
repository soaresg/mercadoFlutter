// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../components/editor.dart';
import '../models/produto.dart';

class FormularioEstoque extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrando Produto'),
      ),
      body: Column(
        children: <Widget>[
          Editor(controlador: _controladorNome, rotulo: 'Nome'),
          Editor(controlador: _controladorQuantidade, rotulo: 'Quantidade'),
          Editor(controlador: _controladorValor, rotulo: 'Valor'),
          ElevatedButton(
            child: Text('Cadastrar'),
            onPressed: () {
              final String nome = _controladorNome.text;
              final int? quantidade = int.tryParse(_controladorQuantidade.text);
              final double? valor = double.tryParse(_controladorValor.text);

              final Produto produtoNovo = Produto(nome, quantidade!, valor!);
              debugPrint('$produtoNovo');
            },
          ),
        ],
      ),
    );
  }
}
