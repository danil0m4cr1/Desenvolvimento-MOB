import "dart:io";

double precoAPagar(double qtde, String instalacao){
  double precoUn = 0;
  double total;
  switch(instalacao){
    case "R":
      if(qtde <= 500){
        precoUn = 0.5;
      } else {
        precoUn = 0.7;
      }
    case "C":
      if(qtde <= 1000){
        precoUn = 0.65;
      } else {
        precoUn = 0.60;
      }
    case "I":
      if(qtde <= 5000){
        precoUn = 0.55;
      } else {
        precoUn = 0.50;
      }
  }

  return total = precoUn * qtde;
}

void main(){
  double qtde;
  String instalacao;

  print("Qual foi a quantidade de kWh consumida? ");
  qtde = double.parse(stdin.readLineSync()!);

  print("Tipos de instalação: \nResidência (R) \nIndústria (I) \nComércio (C)");
  print("Qual o seu tipo de instalação? ");
  instalacao = stdin.readLineSync()!;

  print("Total a pagar: ${precoAPagar(qtde, instalacao)}");
}