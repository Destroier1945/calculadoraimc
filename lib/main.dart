import 'package:calculadoraimc/pages/homepage.dart';
import 'package:calculadoraimc/pages/result.dart';
import 'package:calculadoraimc/utils/pessoa_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => PessoaData(),
      child:MaterialApp(home: const HomePage(title: Text(''),),
  routes: <String, WidgetBuilder>{
  '/home': (BuildContext context) =>  const HomePage(title: Text('')),
  '/result': (BuildContext context) =>  Result(title: Text(''))

  },
  ),
  ),
  );
}

