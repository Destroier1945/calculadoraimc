import 'package:calculadoraimc/utils/verifica_saudacao.dart';
import 'package:calculadoraimc/utils/pessoa_data.dart';
import 'package:calculadoraimc/utils/recomendacoes.dart';
import 'package:calculadoraimc/utils/tabela.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Result extends StatelessWidget {
  const  Result({super.key, required Text title, });


  @override
  Widget build(BuildContext context) {
    final pessoaData = Provider.of<PessoaData>(context);
    final pessoa = pessoaData.pessoa;

    String classificao = classificaoImc(pessoa!.imc);



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

          SingleChildScrollView(
            child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(verificaSaudcao(),style: const TextStyle(fontSize: 64, color: Colors.white, fontWeight: FontWeight.bold),),

                      Text(pessoa.nome, style: const TextStyle(fontSize: 64, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
            
                      Text('Seu IMC é: ${pessoa.imc.toStringAsFixed(2)}', style: const TextStyle(fontSize: 48, color: Colors.white),),

                      SizedBox(height: 24,),  


                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.withOpacity(0.3),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(25),
                            topRight:  Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(classificao,style: const TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w800
                              ),

                            ),
                            Text(getRecomendacoes(classificao), style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),

                      )
                    ],
                  ),
            ),
          ),
        ],
      )
    );
  }
}
