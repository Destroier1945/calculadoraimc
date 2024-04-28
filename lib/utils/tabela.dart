calculaTabela(double imcResult){

  switch(imcResult){
    case 1:
      imcResult < 18.5;
      return 'Magreza';

    case 2:
      imcResult > 18.6 || imcResult < 24.9;
      return 'Normal';

    case 3:
      imcResult > 25 || imcResult < 29.9;
      return 'Sobrepeso';

    case 4:
      imcResult > 30 || imcResult < 34.9;
    return 'Obesidade grau I';

    case 5:
      imcResult > 35 || imcResult < 39.9;
      return 'Obesidade grau II';

    case 6:
      imcResult < 40;
      return 'Obesidade grau III';

  }
  //Menor que 18,5	Magreza
  //18,5 a 24,9	Normal
  //25 a 29,9	Sobrepeso
  //30 a 34,9	Obesidade grau I
  //35 a 39,9	Obesidade grau II
  //Maior que 40	Obesidade grau III
}