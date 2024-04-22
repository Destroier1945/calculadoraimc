import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora IMC',),centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: const Column(
            children: [
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
