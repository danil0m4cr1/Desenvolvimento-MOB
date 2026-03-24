class Animal {
  void fazerSom(){
    print("O animal faz som");
  }
}

class Cachorro extends Animal{
  @override

  void fazerSom(){
    print("O cachorro late au au");
  }
}

class Gato extends Animal {
  String? nome;
  Gato(this.nome);
  @override
  void fazerSom(){
    print("O gato mia");
  }
}

void main(){
  Animal meuAnimal = Cachorro();
  meuAnimal.fazerSom();

  Animal Rocky = Animal();
  Rocky.fazerSom();

  Gato Garfield = Gato("Garfield");
  print("O nome do gato é ${Garfield.nome}");

  Garfield.fazerSom();
}