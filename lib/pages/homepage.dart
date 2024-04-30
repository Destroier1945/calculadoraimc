
import 'package:calculadoraimc/models/pessoa.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/pessoa_data.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key, required Text title});

  @override
  State<HomePage> createState() => _HomePageState();


}

class _HomePageState extends State<HomePage> {

  final _nomeController = TextEditingController();
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();

  @override
  void dispose(){
    _nomeController.dispose();
    _pesoController.dispose();
    _alturaController.dispose();
    super.dispose();
  }

void  _calculaImc(){
    String nome = _nomeController.text;
    double peso = double.tryParse(_pesoController.text)??0;
    double altura = double.tryParse(_alturaController.text)??0;

    double imc = peso / (altura * altura);
    print(imc);

    Pessoa pessoa = Pessoa(nome: nome, altura: altura, peso: peso, imc: imc);

    Provider.of<PessoaData>(context, listen: false).setPessoa(pessoa);

    Navigator.pushNamed(context, '/result');

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bem vindo',),centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          child:  Column(
            children: [
              TextField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintText: 'Seu nome',

                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 8,),
                TextField(
                 controller: _pesoController,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                 ),
                 hintText: 'Seu peso',

               ),
               keyboardType: TextInputType.number,
             ),
              const SizedBox(height: 8,),
               TextField(
                controller: _alturaController ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Sua altura'
                ),
              ),
              const SizedBox(
                height: 8,),
              ElevatedButton(onPressed: _calculaImc,
               child: const Text('Calcular IMC',))
            ],
          ),
        ),
      ),
    );
  }
}
