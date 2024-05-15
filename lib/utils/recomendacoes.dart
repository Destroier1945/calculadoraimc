String getRecomendacoes(String imcClassification) {
  switch (imcClassification) {
    case 'Magreza':
      return 'Você está abaixo do peso ideal. Isso pode indicar desnutrição ou outros problemas de saúde. Recomendamos procurar um médico para uma avaliação completa. É importante focar em uma alimentação equilibrada e saudável para ganhar peso de forma gradual e saudável, além de incluir exercícios físicos para fortalecer os músculos e melhorar a saúde geral.';
    case 'Normal':
      return 'Seu peso está dentro da faixa considerada saudável. Parabéns! Continue mantendo hábitos alimentares saudáveis, incluindo uma dieta equilibrada rica em frutas, vegetais, proteínas magras e grãos integrais. Além disso, é importante manter-se ativo fisicamente, praticando exercícios regularmente, para manter sua saúde geral.';
    case 'Sobrepeso':
      return 'Você está com sobrepeso, o que pode aumentar o risco de desenvolver várias condições de saúde, como diabetes tipo 2, doenças cardíacas e pressão alta. Recomendamos consultar um médico ou nutricionista para desenvolver um plano de alimentação saudável e um programa de exercícios adequado às suas necessidades. A perda de peso gradual e sustentável é a chave para alcançar e manter um peso saudável.';
    case 'Obesidade grau I':
      return 'Você está com obesidade grau I, o que significa que você tem um excesso significativo de peso que pode afetar negativamente sua saúde. É importante procurar ajuda profissional, como um médico, nutricionista ou treinador físico, para desenvolver um plano de ação personalizado para perder peso de forma segura e eficaz. Isso pode incluir ajustes na dieta, aumento da atividade física e mudanças no estilo de vida.';
    case 'Obesidade grau II':
      return 'Você está com obesidade grau II, o que indica um risco ainda maior para a saúde. A obesidade grau II está associada a um aumento significativo do risco de desenvolver condições graves de saúde, como doenças cardíacas, derrames, diabetes tipo 2 e certos tipos de câncer. É essencial buscar ajuda médica imediatamente para iniciar um plano de perda de peso supervisionado e focado na saúde, que pode incluir mudanças na dieta, exercícios físicos regulares e possivelmente intervenções médicas adicionais.';
    case 'Obesidade grau III':
      return 'Você está com obesidade grau III, também conhecida como obesidade mórbida, o que representa o maior risco para a saúde. A obesidade grau III está associada a uma série de complicações graves de saúde, incluindo doenças cardíacas, derrames, diabetes tipo 2, apneia do sono e certos tipos de câncer. É crucial buscar tratamento médico imediato e apoio contínuo para iniciar uma jornada de perda de peso segura e eficaz. Isso pode envolver uma abordagem multidisciplinar, incluindo mudanças na dieta, exercícios físicos supervisionados, aconselhamento psicológico e, em alguns casos, intervenções médicas.';
    default:
      return 'Não foram fornecidas recomendações para esta classificação.';
  }
}
