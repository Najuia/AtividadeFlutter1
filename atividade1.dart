import 'package:flutter/material.dart';
import './botao.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> bot = []; 
  String textobot = '';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Botão '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (Text) {
              textobot = Text;
              print(textobot);
            }),
           
            bot("botao"),
            SizedBox(height: 16.0), 
            Column(
              children:bot, 
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/matimport 'package:flutter/material.dart';

class botao extends StatelessWidget{

  String texto;
  
  bot(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:(){print("botao apertado");}, child: Text(texto));
  }

}
