import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> nomes = [
    'Porquinho',
    'Dino',
    'Robo'
  ];
  final List<String> escola = [
    'Escola Toy Story',
    'Escola Nova Jérsia',
    'Escola Omnitrix'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fichas dos Alunos'),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Ficha(
              imagem: getImageUrl(index),
              nome: nomes[index],
              matricula: Random().nextInt(100000),
              escola: escola[index],
              anoPeriodo: '2023/2',
            );
          },
        ),
      ),
    );
  }

  String getImageUrl(int index) {
    switch (index) {
      case 0:
        return 'https://www.imagensempng.com.br/wp-content/uploads/2021/12/Porco-Toy-Story-Png.png';
      case 1:
        return 'https://www.imagensempng.com.br/wp-content/uploads/2021/12/T-rex-Toy-Story-Png.png';
      case 2:
        return 'https://www.imagensempng.com.br/wp-content/uploads/2020/10/Ben-10-Echo-Cartoon-Desenho-PNG-ClipArt-834x1024.png';
      default:
        return '';
    }
  }
}

class Ficha extends StatelessWidget {
  final String imagem;
  final String nome;
  final int matricula;
  final String escola;
  final String anoPeriodo;

  Ficha({
    required this.imagem,
    required this.nome,
    required this.matricula,
    required this.escola,
    required this.anoPeriodo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imagem,
              width: 150,
              height: 150,
            ),
            SizedBox(height: 10),
            Text('Nome: $nome'),
            Text('Matrícula: $matricula'),
            Text('Escola: $escola'),
            Text('Ano/Período: $anoPeriodo'),
          ],
        ),
      ),
    );
  }
}
