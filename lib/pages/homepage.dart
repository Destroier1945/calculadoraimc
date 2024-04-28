
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required Text title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora IMC',),centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          child:  Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintText: 'NOME',

                ),
                keyboardType: TextInputType.text,
              ),
             SizedBox(height: 8,),
             TextField(
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                 ),
                 hintText: 'PESO',
      
               ),
               keyboardType: TextInputType.number,
             ),
              SizedBox(height: 8,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ALTURA'
                ),
              ),
              ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, '/result')
              , child: Text('Calcular'))
            ],
          ),
        ),
      ),
    );
  }
}
