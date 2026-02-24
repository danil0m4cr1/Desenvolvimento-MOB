import "dart:io";

void main() {
  int res = 0, n;

  print("Digite o número que deseja saber a tabuada: ");
  n = int.parse(stdin.readLineSync()!);
  print("Tabuada do $n");

  for (int i = 0; i < 11; i++) {
    res = n * i;
    print("Res = $n * $i = $res");
  }
}
