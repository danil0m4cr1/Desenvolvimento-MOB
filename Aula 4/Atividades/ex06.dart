class Item {
  String nome;
  double preco;
  int quantidade;

  Item(this.nome, this.preco, this.quantidade);
}

class CarrinhoDeCompras {
  List<Item> itens = [];

  // Adicionar item
  void adicionarItem(String nome, double preco, int quantidade) {
    itens.add(Item(nome, preco, quantidade));
  }

  // Remover item pelo nome
  void removerItem(String nome) {
    itens.removeWhere((item) => item.nome == nome);
  }

  // Calcular total do carrinho
  double calcularTotal() {
    double total = 0;
    for (var item in itens) {
      total += item.preco * item.quantidade;
    }
    return total;
  }

  // Mostrar itens
  void mostrarCarrinho() {
    for (var item in itens) {
      print(
          "${item.nome} - ${item.quantidade} x R\$ ${item.preco} = R\$ ${item.preco * item.quantidade}");
    }
  }
}

void main() {
  CarrinhoDeCompras carrinho = CarrinhoDeCompras();

  carrinho.adicionarItem("Arroz", 20.0, 2);
  carrinho.adicionarItem("Feijão", 8.0, 3);

  print("Itens no carrinho:");
  carrinho.mostrarCarrinho();

  print("\nTotal: R\$ ${carrinho.calcularTotal()}");

  carrinho.removerItem("Arroz");

  print("\nApós remover Arroz:");
  carrinho.mostrarCarrinho();
  print("Total: R\$ ${carrinho.calcularTotal()}");
}