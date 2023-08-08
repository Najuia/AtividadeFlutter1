import 'package:flutter/material.dart';
import 'main.dart';

class Botoes extends StatelessWidget {
  final String texto;
  final Function acao;
  Botoes(this.acao, this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: acao as void Function()?,
      child: Text(texto),
    );
  }
}
