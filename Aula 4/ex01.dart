class Casa{
  String ? cor;

  int ? qtde_p;

  void abrirporta(){
    print("A porta está aberta");
  }


}

void main(){
  Casa minhaCasa = Casa();
  print("Cor da casa ${minhaCasa.cor}");
  print("Quantidade de portas: ${minhaCasa.qtde_p}");
  minhaCasa.cor = "Vermelho";
  minhaCasa.qtde_p = 2;
  print("Cor da casa ${minhaCasa.cor}");
  print("Quantidade de portas: ${minhaCasa.qtde_p}"); 
}