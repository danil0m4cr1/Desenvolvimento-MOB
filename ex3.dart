import "dart:io";

void main() {
  double n1, n2, res;
  print("Digite o n1: ");
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite o n2: ");
  n2 = double.parse(stdin.readLineSync()!);
  res = (n1 + n2) / 2;
  print("Nota 1: $n1");
  print("Nota 2: $n2");
  print("Média: $res");
  if (res >= 6) {
    print("Parabéns! Aprovado");
  } else {
    print("Reprovado!");
  }
}
