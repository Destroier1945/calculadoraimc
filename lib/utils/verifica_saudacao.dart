verificaSaudcao(){
  DateTime agora = DateTime.now();
 int hora = agora.hour;
  if(hora  >= 5 && hora < 12 ){
   return 'Bom dia';
  }else if(hora >= 12 && hora < 18){
   return 'Boa tarde';
  }else{
   return 'Boa noite';
  }
}