import 'dart:io';

void main(){

  print('Quantas sucessões você deseja imprimir?');
  String? contadorString = stdin.readLineSync();

  int contador = int.parse(contadorString ?? "0");

  int sequencia = 1;
  int numAtual = 0;
  int proxNum = 1;

  print("\n");
  print("=====Imprimindo=====");
  print(numAtual);
  print(proxNum);

  while (sequencia  <= contador -2){
    int soma = 0;
    soma = numAtual + proxNum;
    print(soma);

    numAtual = proxNum;
    proxNum = soma;

    sequencia++;
  }
}