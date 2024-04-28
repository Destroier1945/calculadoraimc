import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required Text title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),

      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img.png"),
              fit: BoxFit.cover
            ),
          ),
        child: Center(
          child: Text('Resultado'),
        ),
      ),
    );
  }
}
