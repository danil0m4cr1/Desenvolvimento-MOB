abstract class MaquinaIndustrial {
  MaquinaIndustrial(nome,potencia,status);

  void ligar();
  void desligar();
}

class Maquina implements MaquinaIndustrial {
  String? nome;
  double potencia;
  Maquina(this.nome, this.potencia, status);

  void ligar(){
    print("Maquina ${nome} ligada");
  }

  void desligar(){
    print("Maquina ${nome} desligada");
  }
}

void main(){
  Maquina maquina = Maquina("Torno", 4800.0, "Funcionando");
  maquina.ligar();
  maquina.desligar();
}