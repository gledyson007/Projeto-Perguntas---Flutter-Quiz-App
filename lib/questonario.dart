import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntasSelectionadas;
  final void Function(int) quandoResponder;

  const Questionario({
    super.key,
    required this.perguntas,
    required this.perguntasSelectionadas,
    required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntasSelectionadas < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    if (!temPerguntaSelecionada) {
      return Column(children: [Text('Nenhuma pergunta disponível')]);
    }

    List<Map<String, Object>> respostas =
        perguntas[perguntasSelectionadas]['respostas']
            as List<Map<String, Object>>;

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntasSelectionadas]['texto'] as String),
        ...respostas.map((resp) {
          return Resposta(
            resp['texto'].toString(),
            () => quandoResponder(resp['pontuacao'] as int),
          );
        }),
      ],
    );
  }
}
