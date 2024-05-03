import 'package:calculadoraimc/models/pessoa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../utils/pessoa_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final Text title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _pesoController.dispose();
    _alturaController.dispose();
    super.dispose();
  }

  void _calculaImc() {
    String nome = _nomeController.text;
    double peso = double.tryParse(_pesoController.text) ?? 0;
    double altura = double.tryParse(_alturaController.text) ?? 0;

    double imc = peso / (altura * altura);

    Pessoa pessoa = Pessoa(nome: nome, altura: altura, peso: peso, imc: imc);

    Provider.of<PessoaData>(context, listen: false).setPessoa(pessoa);

    Navigator.pushNamed(context, '/result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.title,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Seu nome',
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, digite seu nome.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _pesoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Seu peso em kg',
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: <TextInputFormatter>[

                  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                ],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, digite seu peso.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _alturaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Sua altura em metros (Ex: 1.60)',
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+(\.\d{0,2})?$')),
                ],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, digite sua altura.';
                  }
                  if (!RegExp(r'^\d{0,1}(\.\d{0,2})?$').hasMatch(value)) {
                    return 'Formato de altura inválido (Ex: 1.60)';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _calculaImc();
                  }
                },
                child: const Text('Calcular IMC'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
