class Carro {
  String marca;
  String modelo;
  int ano;
  bool motor_ligado = false;

  Carro(this.marca, this.modelo, this.ano);

  void ligar_motor(){
    motor_ligado = true;
  }

  void desligar_motor(){
    motor_ligado = false;
  }

  void status_motor(){
    if(motor_ligado){
      print("O motor está ligado!");
    } else {
      print("O motor está desligado");
    }
  }

  void info_carro(){
    print("Marca do carro: ${marca}, modelo: ${modelo} e ano: ${ano}");
  }
}

void main(){
  Carro bmw = Carro("BMW", "320i", 2024);
  bmw.ligar_motor();
  bmw.status_motor();
  bmw.info_carro();
}