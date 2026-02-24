void criarUsuario(int idade, {required String nome}) {
  print("Idade: $idade, Usuário: $nome");
}

var anonimafunc = () => print("Olá Dart!");
void main() {
  criarUsuario(30, nome: "Danilo");
  anonimafunc();
}
