import "dart:io";

void conversor(double reais, var moeda){
    double res;
    
    switch(moeda){
        case "EUR":
            res = reais * 7.00;
            print("Seu valor convertido em euros: $res");
            break;
        case "USD":
            res = reais * 6.56;
            print("Seu valor convertido em doláres: $res");
            break;
        case "CHF":
            res = reais * 4.35;
            print("Seu valor convertido em franco suiço: $res");
            break;
        default:
            print("Moeda inválida, escolha novamente");
    }
}

void main(){
    double reais;
    String? moeda;
    
    
    print("Quantos reais deseja converter? ");
    reais = double.parse(stdin.readLineSync()!);
    
    print("Moedas: \nEuro (EUR) \nDólar (USD) \nFranco suíço (CHF)");
    print("Escolha uma moeda: ");
    moeda = stdin.readLineSync()?.toUpperCase();
    conversor(reais, moeda);
}
