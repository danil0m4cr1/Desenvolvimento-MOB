abstract class Forma {
  double calcularArea();
}

class Circulo implements Forma {
  double raio;
  Circulo(this.raio);

  @override
  double calcularArea(){
    return 3.14*raio*raio;
  }
}

class Retangulo implements Forma {
  double largura, altura;
  Retangulo(this.largura, this.altura);
  
  @override

  double calcularArea(){
    return altura * largura;
  }
}

void main(){
  Forma forma1 = Circulo(5);
  Forma forma2 = Retangulo(4, 7);

  print("A área do círculo: ${forma1.calcularArea()}");
  print("A área do retangulo: ${forma2.calcularArea()}");
}