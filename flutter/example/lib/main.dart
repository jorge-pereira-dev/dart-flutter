// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    //Função para atualizar interface gráfica
    //setState, usado para dentro dele passar o que está sendo modificado
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

/*  void Function() functionTofunction() {
    return () {
      print('Pergunta respondida ###');
    };
  }
*/

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual cor?',
      'Qual animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              //Chamar método
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              //Executar função direto
              onPressed: responder,
              /*() {
                print('Resposta 2 chamada direto');
              },*/
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
              //() => print('Chamando função'),
            ),

            /*RaisedButton(
              child: Text('Resposta 4'),
              //Função que chama função
              onPressed: functionTofunction(),
            ),*/
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
