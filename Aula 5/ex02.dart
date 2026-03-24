class Produtos {
  String? nome;
  int qtde;
  double preco;
  String tipo_comunic;
  double consumo_KW;

  Produtos(this.nome, this.qtde, this.preco, this.tipo_comunic, this.consumo_KW);

  void ligar(){
    print("Produto ligado");
  }
}

class Fritadeira extends Produtos {
  String? cor;
  Fritadeira(nome, qtde, preco, tipo_comunic, consumo_KW, this.cor):super(nome, qtde, preco, tipo_comunic, consumo_KW);

  @override

  void ligar(){
    print("Fritadeira ${nome} ligada");
  }

  void desligar(){
    print("Fritadeira ${nome} desligada");
  }

  void ajusta_temp(int temp){
    int setpoint = 250;

    if(temp >= setpoint){
      print("Temperatura ok");
    } else {
      while(temp < 250){
        temp = temp + 10;
        print("Temperatura atual: ${temp}");
      }
      print("Temperatura ajustada em 250 oC");
    }
  }
}

class Arcondicionado extends Produtos {
  Arcondicionado(nome, qtde, preco, tipo_comunic, consumo):super(nome, qtde, preco, tipo_comunic, consumo);

  @override

  void ligar(){
    print("Ar condicionado ligado");
  }

  void desligar(){
    print("Ar condicionado desligado");
  }

  void ajusta_temp(int temp){
    int setpoint = 22;

    if(temp == setpoint){
      print("Temperatura ok");
    } else {
      while(temp < setpoint){
        temp = temp + 2;
        print("Ajuste de temperatura ${temp}");
      }
      print("Temperatura ok");
    }
  }
}

void main(){
  Fritadeira Philco = Fritadeira("Fritadeira Philco", 1, 800.0, "WiFi", 1.4, "Cinza");

  Philco.ligar();
  Philco.ajusta_temp(10);
  Philco.desligar();

  Arcondicionado LG = Arcondicionado("Ar Condicionado LG", 2, 5000.2, "Bluetooth", 5.0);
  LG.ligar();
  LG.ajusta_temp(5);
}