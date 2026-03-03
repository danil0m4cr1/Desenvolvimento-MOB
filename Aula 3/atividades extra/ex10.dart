import "dart:io";

void calculadora(double val1, double val2, double val3, double val4, String op){
  double res = 0;
  switch(op){
    case "+":
      res = val1 + val2 + val3 + val4;
      break;
    case "-":
      res = val1 - val2 - val3 - val4;
      break;
    case "*":
      res = val1 * val2 * val3 * val4;
      break;
    case "/":
      res = val1 / val2 / val3 / val4;
      break;
    default:
      print("Escolha uma operação válida!");
      break;
  }
}

void main(){
  double val1, val2, val3, val4;

  print("Digite o primeiro valor: ");
  val1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo valor: ");
  val2 = double.parse(stdin.readLineSync()!);

  print("Digite o terceiro valor: ");
  val3 = double.parse(stdin.readLineSync()!);

  print("Digite o quarto valor: ");
  val4 = double.parse(stdin.readLineSync()!);

  print("Operações: \nSoma (+), Subtração (-), Multiplicação (*), Divisão (/)");
  print("Qual operação você deseja? ");
  op = stdin.readLineSync()!;

  calculadora(val1, val2, val3, val4, op);
}