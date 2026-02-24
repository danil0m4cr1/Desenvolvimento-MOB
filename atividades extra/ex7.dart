import "dart:io";

void comparador(double carro1, double carro2, double carro3){
    if(carro1 > carro2){
        if(carro1 > carro3){
            print("O valor do modelo 1 é maior");
            if(carro2 > carro3){
                print("O valor do modelo 3 é menor");
            }
        } else {
            print("O valor do modelo 3 é maior");
            print("O valor do modelo 2 é menor");
        }
    }
    if(carro2 > carro1){
        if(carro2 > carro3){
            print("O valor do modelo 2 é maior");
            if(carro1 > carro3){
                print("O valor do modelo 3 é menor");
            }
        } else {
            print("O valor do modelo 3 é maior");
            print("O valor do modelo 1 é menor");
        }
    }
}

void main(){
    double val1, val2, val3;
    
    print("Valor do carro de modelo 1: ");
    val1 = double.parse(stdin.readLineSync()!);
    
    print("Valor do carro de modelo 2: ");
    val2 = double.parse(stdin.readLineSync()!);
    
    print("Valor do carro de modelo 3: ");
    val3 = double.parse(stdin.readLineSync()!);
    
    comparador(val1, val2, val3);
}
