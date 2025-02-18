import 'dart:io';

void main(){

var meuCpf = validaCpf();

if (meuCpf == true){
  print("Seu CPF é valido");
}else{
  print("Seu CPF é invalido");
}
 
}

validaCpf(){

  print("==Validador de CPF==");
  print("==Digite seu CPF sem ponto e traço==");
  print("\n");


  bool digito1Valido = false;
  bool digito2Valido = false;

  var recebeCpf = stdin.readLineSync();

  if(recebeCpf!.length != 11){
    print("O CPF digitado está inválido.");
    return ("Tente novamente");
  }

  //validando o primeiro digito
  int soma1 = 0;

  for(int cont = 0; cont < 9; cont++){

    soma1 += int.parse(recebeCpf[cont]) * (10 - cont);

  }

  double resto1 = (soma1 * 10) % 11;

  if(resto1 == 10){
    resto1 = 0;
  }

  if(resto1 != int.parse(recebeCpf[9])){
    print("O CPF não é valido");
  }else{
    print("primeiro digito válido");
    digito1Valido = true;
  }

  //Validando o segundo digito
  int soma2 = 0;

  for(int cont =0; cont < 10; cont++){
    soma2 += int.parse(recebeCpf[cont]) * (11 -cont);
  }

  double resto2 = (soma2 * 10) % 11;

  if((resto2 == 10) || (resto2 == 11)){
    resto2 =0;
  }

  if(resto2 != int.parse(recebeCpf[10])){
    print("O CPF não é valido");
  }else{
    print("Segundo digito válido");
    digito2Valido = true;
  }

  bool cpfValido = (digito1Valido && digito2Valido);

  return cpfValido;

}





























// String validaCpf(){

//   print("===Validador de CPF===");
//   print("===Digite seu CPF sem ponto (.) e traço (-)===");
//   var cpfString = stdin.readLineSync();

//   if(cpfString!.length != 11){
//     print("O CPF está invalido, favor verificar!");
//   }

//   int somaCpf = 0;
//   //validando o primeiro digito
//   for(int cont = 0; cont < 9; cont++){
    
//     somaCpf += int.parse(cpfString[cont]) * (10 - cont);
//     print(somaCpf);

//   }
//   var primeiroDigito = (somaCpf * 10) % 11;
//   print(primeiroDigito);
//   if(primeiroDigito == 10)
//   if(primeiroDigito != int.parse(cpfString[9])){
//     print("O CPF está invalido, favor verificar!");
//   }else{
//     print("O primeiro digito verificado esta correto");
//   }

//   //validando o segundo digito
//   var soma2 = 0;
//   for(int cont = 0; cont < 10; cont++){
    
//     soma2 += int.parse(cpfString[cont]) * (11 -cont);
//     print(soma2);
//     print(cont);
//     print("\n");
//   }

//   var segundoDigito = (somaCpf *10) % 11;

//   if(segundoDigito != int.parse(cpfString[10])){
//     print("O CPF está invalido, favor verificar!");
//   }else{
//     print("O segundo digito verificado esta correto");
//   }

//   print(segundoDigito);





//   return cpfString;
// }