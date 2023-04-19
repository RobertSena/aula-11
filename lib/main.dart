import 'dart:math';
import 'package:flutter/material.dart';
//app de frases aleatórias com, array de frases
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App frases aleatórias',
    home: frases(),
  ));
}
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);
  @override
  State<frases> createState() => _frasesState();
  }
  class _frasesState extends State<frases> {
  

  //back do app
    //criar um array de frases para ser exibidos de forma aleatória
    var _frases =[
      'Herois vem e vão. Mas lendas são para sempre!', //array frase 0
      'Continue crescendo no jogo e traçando o caminho para a próxima.', //array frase 1
      'Todo o negativo, a pressão, os desafios... Para mim representa uma oportunidade de crescer.', //array frase 2
      'MAMBA MENTALITY. A constante questão de ser a melhor versão de você.', //array frase 3
      'Se sente medo de falar, provavelmente falarás.', // array frase 4
      'Se você me vir brigando com um urso, reze para o urso.' //array frase 5
    ];

    var _frasesGerada= 'Clique abaixo para gerar uma frase!'; //o text depois da imagem da logo, para chamar a função _gerarfrase

    void _gerarFrase(){ //função de gerar a frase aleatória
      //random sorteado irá pegar aleatóriamente de 0,1,2,3,4

      var numeroSorteado = Random().nextInt(_frases.length);
      //random é um importe do tipo import 'dart:marth;
      // o rondom é responsavel por exibir o array de forma aleatória
      setState(() {
        _frasesGerada=_frases[numeroSorteado];
      });
    }

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frase do dia'),
        backgroundColor: Colors.blueGrey, //cor do appBar
      ),
      body: Center( //Centralizar o body
        child: Container(
          padding: EdgeInsets.all(16),//espaçamento appBar para o body
          child: Column(// verticalizar os elementos
            mainAxisAlignment: MainAxisAlignment.spaceAround, //spaceround == entre os espaços
            crossAxisAlignment: CrossAxisAlignment.center, //centralizar o espaçamento
            children:<Widget>[
              Image.asset('img/mamba.png'// crie seu logo no canvas
             ),
            Text(_frasesGerada,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase, // colocar a função array de frases aleatórias
                  child: Text('Nova Frase',
                      style: TextStyle(
                      fontSize: 25,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                          //ElevatedButton. styleFrom(backgroundColor: Colors.blueGrey),
                  ),
                  ),
                style: ElevatedButton. styleFrom(backgroundColor: Colors.blueGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
  }



