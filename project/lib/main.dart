// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import './questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    //Função para atualizar interface gráfica
    //setState, usado para dentro dele passar o que está sendo modificado
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
            Questao(perguntas[_perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              //Chamar método
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              //Executar função direto
              onPressed: _responder,
              /*() {
                print('Resposta 2 chamada direto');
              },*/
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
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
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
