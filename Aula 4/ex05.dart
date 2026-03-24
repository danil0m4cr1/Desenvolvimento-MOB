class Animal {
  String ? nome;
  int ? idade;
  
  void dormir(){
    print("O animal ${nome} está dormindo");
  }
}

class Cachorro extends Animal {
  void latir(){
    print("O animal $nome está latindo");
  }
}

class Tigre extends Animal {
  String ? cor;
  void atacar(){
    print("O animal Tigre $nome atacou");
  }
}

void main(){
  Cachorro Rocky = Cachorro();
  Rocky.nome = "Rocky";
  Rocky.idade = 3;
  Rocky.latir();
  Rocky.dormir();

  Tigre Memphis = Tigre();
  Memphis.nome = "Memphis";
  Memphis.cor = "Branco";
  Memphis.idade = 30;
  Memphis.atacar();
}