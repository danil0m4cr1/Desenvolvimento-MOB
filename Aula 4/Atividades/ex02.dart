import "dart:io";

void areaTriangulo(double base, double altura){
  double area = (base * altura) / 2;
  print("A área do triângulo é: ${area}");
}

void main(){
  double base, altura;
  
  print("Qual a base do triângulo? ");
  base = double.parse(stdin.readLineSync()!);

  print("Qual a altura do triângulo? ");
  altura = double.parse(stdin.readLineSync()!);

  areaTriangulo(base, altura);
}