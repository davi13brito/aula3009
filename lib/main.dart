import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp( MaterialApp(
      title: "Primeiro APP",
      home: PrimeroApp()
  ) );
}
class PrimeroApp extends StatefulWidget {

  @override
  _PrimeroAppState createState() => _PrimeroAppState();
}
class _PrimeroAppState extends State<PrimeroApp> {

  List<String> alunos = ["Paulo",
    "Jailson",
    "Davi",
    "Eglenrique",
    "Inácio",
    "Mateus",
    "William"];
  String _alunoSorteado = "Ainda não conhecido";

  sorteio(){
    setState(() {
      int numeroSorteado = Random().nextInt(alunos.length);
      _alunoSorteado = alunos[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),

    color: Colors.green,
    //alignment: Alignment.bottomCenter,

      child: Column(
        children: [
          Text(
            "Aprendendo Flutter!",
            textAlign: TextAlign.justify,

            style: TextStyle(
                fontSize: 30
            ),
          ),
          Text(
            "Aula de TDM",
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 30,
                color: Colors.black
            ),
          ),
          RaisedButton(
              child: Text("Botão Para sorteio"),
              onPressed: sorteio
          ),
          Text(
              "O aluno sorteado: $_alunoSorteado"
          )
        ],
      ),
    );
  }
}