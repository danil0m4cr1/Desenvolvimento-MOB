class MaquinaIndustrial {
  String? nome;
  MaquinaIndustrial(nome);

  void ligar(){
    print("Maquina ligada");
  }

  void desligar(){
    print("Maquina desligada");
  }
}

class Prensa extends MaquinaIndustrial {
  String? nome;
  double pressaoTon;

  Prensa(nome, this.pressaoTon):super(nome);

  @override

  void ligar(){
    print("Prensa ligada, exercendo uma forca de ${pressaoTon} toneladas");
  }

  void desligar(){
    print("Prensa desligada");
  }
}

class RoboSolda extends MaquinaIndustrial {
  String? nome;
  String? tipoSolda;
  RoboSolda(nome, this.tipoSolda):super(nome);

  @override

  void ligar(){
    print("Robo de solda ligado e esta utilizando a solda: ${tipoSolda}");
  }

  void desligar() {
    print("Robo de solda desligado");
  }
}

void main(){
  MaquinaIndustrial maquina = MaquinaIndustrial("Maquina");
  maquina.ligar();
  maquina.desligar();

  Prensa prensa = Prensa("Prensa", 12.0);
  prensa.ligar();
  prensa.desligar();

  RoboSolda robosolda = RoboSolda("RoboSolda", "estanho");
  robosolda.ligar();
  robosolda.desligar();
}