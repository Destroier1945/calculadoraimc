import 'package:calculadoraimc/utils/pessoa_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Result extends StatelessWidget {
  const  Result({super.key, required Text title, });


  @override
  Widget build(BuildContext context) {
    final pessoaData = Provider.of<PessoaData>(context);
    final pessoa = pessoaData.pessoa;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
        centerTitle: true, backgroundColor: Colors.greenAccent.withOpacity(0.7)
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/result.jpeg',
          fit: BoxFit.cover,),
          Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Bom dia \n${pessoa?.nome ?? ''}', style: const TextStyle(fontSize: 64, color: Colors.white, fontWeight: FontWeight.bold),
                    ),

                    Text('Seu IMC é: ${pessoa?.imc.toStringAsFixed(2) ??''}', style: const TextStyle(fontSize: 48, color: Colors.white),),

                  ],
                ),
          ),
        ],
      )
    );
  }
}
