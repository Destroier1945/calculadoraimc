import 'package:calculadoraimc/utils/pessoa_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Result extends StatelessWidget {
   const Result({super.key, required Text title, });


  @override
  Widget build(BuildContext context) {
    final pessoaData = Provider.of<PessoaData>(context);
    final pessoa = pessoaData.pessoa;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),

      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/img.png',
          fit: BoxFit.cover,),
          Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Bom dia ${pessoa?.nome ?? ''}', style: TextStyle(fontSize: 36,
                      foreground: Paint()
                        ..shader = const LinearGradient(
                          colors: <Color>[
                            Colors.cyanAccent,
                            Colors.orangeAccent,
                          ],
                        ).createShader(const Rect.fromLTRB(0, 20, 150, 20)),
                    ),
                    ),

                    Text('Seu IMC é: ${pessoa?.imc ??''}', style: const TextStyle(fontSize: 24, color: Colors.redAccent),),

                  ],
                ),
          ),
        ],
      )
    );
  }
}
