abstract class Automoveis {
    String? nome;
    String? cor;
    int ano;
    
    Automoveis(this.nome, this.cor, this.ano);
}

class Carro extends Automoveis {
    Carro(nome, cor, ano):super(nome, cor, ano);
}

void main(){
    Carro corolla = Carro("Corolla", "Prata", 2017);
    print("Seu carro é um ${corolla.nome}, na cor ${corolla.cor}, de ${corolla.ano}");
}


