import 'package:flutter/material.dart';

Color cor(int corval){


      if(corval == 0)
        return Colors.blue;
      else if(corval == 1)
        return Colors.green;
      else if(corval == 2)
        return Colors.black;
      else 
        return Colors.white;


}

import 'package:flutter/material.dart';
import 'colors.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> botoes = []; // uma lista de widgets (botões)
  String textobot = '';
  Color corrs = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botão'),
      ),
      body: Center(

        child: Container(
          width: double.infinity,
          color: corrs,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (Text) {
                textobot = Text;
                print(textobot);
              }),
           ElevatedButton(onPressed:(){setState(() {
             corrs:
             corrs =  cor(0);
           });} , child:Text("Tela Azul")),
           ElevatedButton(onPressed:(){ setState(() {
             corrs:
             corrs =  cor(1);
           });} , child: Text("Tela Verde")),
           ElevatedButton(onPressed:(){ setState(() {
             corrs:
             corrs =  cor(2);
           });} , child: Text("Tela Preta")),
            ],
          ),
        ),
      ),
    );
  }
}
