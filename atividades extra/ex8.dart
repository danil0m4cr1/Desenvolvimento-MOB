import "dart:io";

// Formula de desconto: desconto = precoLitro * litros * percDesconto
// Valor total: (precoLitro * litros) - desconto

void calcCombustivel(double litros, String combustivel){
    double precoLitro, desconto, percDesconto, vTotal;
    
    String tipo;
    switch(combustivel){
        case "E":
            precoLitro = 1.70;
            tipo = "Etanol";
            if(litros >= 15){
                percDesconto = 0.04;
            } else {
                percDesconto = 0.03;
            }
            desconto = precoLitro * litros * percDesconto;
            vTotal = (precoLitro * litros) - desconto;
            print("Valor total do combustível com etanol: $vTotal");
            break;
        case "D":
            precoLitro = 2.00;
            tipo = "Diesel";
            if(litros >= 15){
                percDesconto = 0.05;
            } else {
                percDesconto = 0.03;
            }
            desconto = precoLitro * litros * percDesconto;
            vTotal = (precoLitro * litros) - desconto;
            print("Valor total do combustível com diesel: $vTotal");
            break;
        case "G":
            precoLitro = 4.50;
            tipo = "Gasolina";
            if(litros >= 20){
                percDesconto = 0.03;
            } else {
                percDesconto = 0;
            }
            desconto = precoLitro * litros * percDesconto;
            vTotal = (precoLitro * litros) - desconto;
            print("Valor total do combustível com gasolina: $vTotal");
            break;
        default:
            print("Você deve escolher uma opção válida!");
            break;
    }
}

void main(){
    double litros;
    String combustivel;
    
    print("Quantos litros você comprou?");
    litros = double.parse(stdin.readLineSync()!);
    
    print("Combustíveis: \nE para etanol \nD para diesel \nG para gasolina");
    print("Qual tipo de combustível? ");
    combustivel = stdin.readLineSync()!;
    combustivel = combustivel.toUpperCase();
    
    calcCombustivel(litros, combustivel);

}
