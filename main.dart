import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(ComponeteInicial());
}

class ComponeteInicial extends StatelessWidget{
    Widget build (BuildContext context){
      return MaterialApp(
        home:Scaffold(
     appBar: AppBar(
          title: Text('Perguntas e Respostas'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                   SizedBox(height:100),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Enviar'),
                  ),
                   ElevatedButton(
                    onPressed: () {},
                    child: Text('Cancelar'),
                  ),
                 ElevatedButton(
                    onPressed: () {},
                    child: Text('Salvar'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Text('Aprendendo'),
                  Text('Programação'),
                  Text('Flutter'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}