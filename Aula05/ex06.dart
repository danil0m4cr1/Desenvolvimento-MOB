class Produto {
  String? nomeProd;
  double _preco = 0.0;

  double get preco => _preco;

  set preco(double novopreco){
    if(novopreco > 0){
      _preco = novopreco;
    } else {
      print("O preço deve ser maior que 0");
    }
  }
}

void main(){
  Produto tenis = Produto();
  tenis.nomeProd = "Tenis";

  tenis.preco = -5;
  print("Preço do produto ${tenis.nomeProd}: R\$ ${tenis.preco}");
  tenis.preco = 200;
  print("Preço do produto ${tenis.nomeProd}: R\$ ${tenis.preco}");
}