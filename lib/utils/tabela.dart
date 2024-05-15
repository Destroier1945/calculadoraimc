classificaoImc(double imcResult){

    if(imcResult < 18.5)
      return 'Magreza';

    else if( imcResult >= 18.5 && imcResult < 25)
      return 'Normal';

    else if(imcResult > 25 && imcResult < 30)
      return 'Sobrepeso';

   else if( imcResult > 30 && imcResult < 35)
    return 'Obesidade grau I';

    else if(imcResult > 35 && imcResult < 40)
      return 'Obesidade grau II';

    else
      return 'Obesidade grau III';
}
