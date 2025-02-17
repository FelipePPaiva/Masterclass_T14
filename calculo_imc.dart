import 'dart:io';
void main(){
  print("=====Calculo de IMC=====");
  print("Digite seu nome:");
  String? nome = stdin.readLineSync();

  print("$nome digite o seu peso:");
  String? pesoString = stdin.readLineSync();
  double peso = double.parse(pesoString ?? "0");

  print("$nome digite a sua altura:");
  String? alturaString = stdin.readLineSync();
  double altura = double.parse(alturaString ?? "0");

  double totalImc = calcularImc(peso, altura);

  if(totalImc > 40){
    print('$nome seu IMC é de $totalImc e seu grau é Obesidade severa');
  }else if(totalImc >= 25 || totalImc <= 39.99){
    print('$nome seu IMC é de $totalImc e você está no sobrepeso');
  }else if(totalImc < 25){
    print('$nome seu IMC é de $totalImc e você está muito magro');
  }else{
    print('$nome seu IMC é de $totalImc e você está no peso ideal');
  }
}

double calcularImc(double peso, double altura){
  double valorImc = peso / (altura * altura);

  return valorImc;
}