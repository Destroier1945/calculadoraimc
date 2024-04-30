
import 'package:calculadoraimc/models/pessoa.dart';
import 'package:flutter/foundation.dart';

class PessoaData extends ChangeNotifier{
  Pessoa? pessoa;

  void setPessoa(Pessoa pessoa){
    this.pessoa = pessoa;
    notifyListeners();
  }
}