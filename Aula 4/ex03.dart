class Pessoa {
  String ? _nome;

  void setNome(String nome){
    _nome = nome;
  }

  String ? _getNome(){
    return _nome;
  }
}

class Aluno {
  String ? nome;
  getNome(){
    return nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();
  cliente._nome = "Danilo";
  print("Nome do cliente: ${cliente._getNome()}");

  Pessoa Danilo = Pessoa();
  Danilo._nome = "Filipe";
  print("${Danilo._getNome()}");
  Aluno Pedro = Aluno();
  Pedro.nome = "Pedro";
  print("${Pedro.getNome()}");
}