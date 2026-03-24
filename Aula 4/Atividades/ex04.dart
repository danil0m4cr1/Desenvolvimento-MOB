import "dart:io";

void realizarTransacao(int operacao){
  String transacao = "";
  switch(operacao){
    case 1:
      transacao = "Saque";
      break;
    case 2:
      transacao = "Pix";
      break;
    case 3:
      transacao = "Empréstimo";
      break;
    case 4:
      transacao = "Transferência";
      break;
    default:
      print("Escolha uma transação existente!");
  }

  print("Você fez uma transação do tipo ${transacao}");
}

void main(){
  int operacao;
  String transacao;
  String nome;
  print("Transações bancárias:\n 1 - Saque\n 2 - Pix\n 3 - Empréstimos\n 4 - Transferências");
  print("Escolha uma opção: ");
  operacao = int.parse(stdin.readLineSync()!);

  realizarTransacao(operacao);
}