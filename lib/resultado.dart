import 'package:cara_coroa/jogar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resultado extends StatefulWidget {
  String? valor;

  Resultado(this.valor);

  //const Resultado({super.key});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    print(widget.valor); //ver no log

    var caminhoImagem = 'assets/images/moeda_cara.png';
    if (widget.valor == 'coroa') {
      caminhoImagem = 'assets/images/moeda_coroa.png';
    } else {
      caminhoImagem = 'assets/images/moeda_cara.png';
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(
                  //pop fecha a tela
                  context,
                );
              },
              child: Image.asset('assets/images/botao_voltar.png'),
            ),
          ],
        ),
      ),
    );
  }
}
