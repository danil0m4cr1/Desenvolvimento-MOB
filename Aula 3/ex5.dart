import "dart:io";

void main() {
  double n1, n2, res;
  var op;
  var msg;

  do {
    print("Operações: ");
    print("+: Soma");
    print("-: Subtração");
    print("*: Multiplicação");
    print("/: Divisão");
    print("Digite o número n1: ");
    n1 = double.parse(stdin.readLineSync()!);
    print("Digite o número n2: ");
    n2 = double.parse(stdin.readLineSync()!);
    print("Escolha a operação: ");
    op = stdin.readLineSync();

    switch (op) {
      case '+':
        res = n1 + n2;
        print("Resultado: $res");
        break;
      case '-':
        res = n1 - n2;
        print("Resultado: $res");
        break;
      case '*':
        res = n1 * n2;
        print("Resultado: $res");
        break;
      case '/':
        if (n2 != 0) {
          res = n1 / n2;
          print("Resultado: $res");
        } else {
          print("Divisão por zero tende ao infinito \n");
          print("Digite um novo número para n2: ");
          n2 = double.parse(stdin.readLineSync()!);

          if (n2 != 0) {
            res = n1 / n2;
            print("Resultado: $res");
          }
        }
        break;
      default:
        print("Escolha uma das operações existentes: ");
        op = stdin.readLineSync();
    }

    print("Deseja continuar?");
    msg = stdin.readLineSync();
  } while (msg == "s" || msg == "S");
}
