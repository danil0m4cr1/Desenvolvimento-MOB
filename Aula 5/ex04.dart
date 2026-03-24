class Forma {
  void desenhar(){
    print("Desenho genérico");
  }
}

class Circulo extends Forma {
  @override
  void desenhar(){
    print("Desenhando um círculo");
  }

  void desenharForma(Forma forma){
    forma.desenhar();
  }
}

void main(){
  Circulo figura = Circulo();
  figura.desenharForma(Circulo());
}