abstract class Automoveis {
    String? nome;
    String? cor;
    int ano;
    
    Automoveis(this.nome, this.cor, this.ano);
    
    void colocarCinto();
    void ligarCarro();
    void desligarCarro();
    void dirigir();
}

class Carro implements Automoveis {
    String? nome;
    String? cor;
    int ano;
    
    Carro(this.nome, this.cor, this.ano);
    
    void colocarCinto(){
        print("Cinto colocado");
    }
    
    void ligarCarro(){
        print("Carro ligado");
    }
    
    void desligarCarro(){
        print("Carro desligado");
    }
    
    void dirigir(){
        print("Carro está sendo dirigido");
    }
}

void main(){
    Carro corolla = Carro("Corolla", "Prata", 2017);
    corolla.colocarCinto();
    corolla.ligarCarro();
    corolla.desligarCarro();
    corolla.dirigir();
}













