import "dart:io";

void salarioLiquido(double salarioBruto) {
  double impostos, bonificacao, total;

  impostos = salarioBruto * 0.1;
  bonificacao = salarioBruto * 0.2;
  total = salarioBruto - impostos + bonificacao;
  print("Salário total: $total");
}

void main(){
  double salario;
  print("Digite qual seu salário bruto");
  salario = double.parse(stdin.readLineSync()!);
  salarioLiquido(salario);
}
