abstract class Alimentar{
  void separarIngredientes();
  void pegarTigela();
  void prepararComida();
}

class Filha implements Alimentar {
  void separarIngredientes(){
    print("Ingredientes separados");
  }

  void pegarTigela(){
    print("Tigela pega");
  }

  void prepararComida(){
    print("Comida preparada");
  }
}

class Filho implements Alimentar {
  String? nome;

  void separarIngredientes(){
    print("Ingredientes preparada para o dog ${this.nome}");
  }

  void pegarTigela(){
    print("Tigela pega para o dog ${this.nome}");
  }

  void prepararComida(){
    print("Comida preparada para o dog ${this.nome}");
  }
}

void main(){
  Filha Jacare = Filha();
  Jacare.separarIngredientes();
  Jacare.pegarTigela();
  Jacare.prepararComida();

  Filho Rocky = Filho();
  Rocky.nome = "Rocky";
  Rocky.separarIngredientes();
  Rocky.pegarTigela();
  Rocky.prepararComida();
}