import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function()? quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é incrível!';
    } else if (pontuacao < 16) {
      return 'Você é impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(fraseResultado, style: TextStyle(fontSize: 28)),
        Text('Pontuação: $pontuacao', style: TextStyle(fontSize: 30)),
        Padding(padding: EdgeInsets.all(20)),
        ElevatedButton(onPressed: quandoReiniciarQuestionario, child: Text('Reiniciar Questionário'))
      ],
    );
  }
}
