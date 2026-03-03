import "dart:io";

void salarioLiquido(double salarioB){
  double desconto, bonificacao, salarioLiq;
  desconto = salarioB * 0.1;
  bonificacao = salarioB * 0.2;
  salarioLiq = salarioB - desconto + bonificacao;
  print("Seu salário líquido é de R\$${salarioLiq}");
}

void main(){
  double salario;

  print("Digite seu salário bruto: ");
  salario = double.parse(stdin.readLineSync()!);

  salarioLiquido(salario);
}