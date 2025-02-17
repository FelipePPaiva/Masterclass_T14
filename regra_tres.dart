import 'dart:io';

void main(){
print("Digite o primeiro número:");
String? numero1String = stdin.readLineSync();
int num1 = int.parse(numero1String ?? "1");

print("Digite o segundo número:");
String? numero2String = stdin.readLineSync();
int num2 = int.parse(numero2String ?? "1");

print("Digite o terceiro número:");
String? numero3String = stdin.readLineSync();
int num3 = int.parse(numero3String ?? "1");



var valorTotal = regraDeTres(num1, num2, num3);

print("O valor é $valorTotal");

}

double regraDeTres(num1, num2, num3){
int num4 = 1;
print("\n");

double total = (num2 * num3)/(num1 * num4);

return total;
}




