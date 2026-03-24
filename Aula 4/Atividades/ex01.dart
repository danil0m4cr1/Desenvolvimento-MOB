import "dart:io";

void usuario(String nome, String curso, int idade){
  print("Seu nome é ${nome}, está cursando ${curso} e tem ${idade} anos");
}

void main(){
  String nome;
  String curso;
  int idade;

  print("Qual seu nome? ");
  nome = stdin.readLineSync()!;

  print("Qual seu curso? ");
  curso = stdin.readLineSync()!;

  print("Qual sua idade? ");
  idade = int.parse(stdin.readLineSync()!);

  usuario(nome, curso, idade);
}