import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  
  final String button;

  final void Function()? quandoSelecionado;


  Resposta(this.button, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        child: Text(
          button,
          style: TextStyle(fontSize: 20, color: Colors.black, ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
