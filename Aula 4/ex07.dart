class Fruta {
  String sabor;
  String nome;
  String cor;
  double peso;
  int diasDesdecolheita;
  bool isMadura = false;

  Fruta(this.sabor, this.nome, this.cor, this.peso, this.diasDesdecolheita);

  void verificarMaturidade(int diasParaMaturidade){
    if(diasDesdecolheita >= diasParaMaturidade){
      print("A fruta $nome está madura");
      isMadura = true;
    } else {
      print("A $nome não está madura");
      isMadura = false;
    }
  }
}

void main(){
  Fruta manga = Fruta("Doce", "Manga", "Amarela", 1.2, 5);
  manga.verificarMaturidade(10);
}