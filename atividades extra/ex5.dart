import "dart:io";

void estadoNotas(double n1, double n2){
    double media;
    
    media = (n1 + n2) / 2;
    if(media >= 7){
        print("Aluno aprovado!");
    } else if(media >= 4 && media < 7){
        print("O aluno deve fazer exame");
    } else {
        print("Reprovado!");
    }
}

void main(){
    double n1, n2;
    print("Digite a primeira nota: ");
    n1 = double.parse(stdin.readLineSync()!);
    
    print("Digite a segunda nota: ");
    n2 = double.parse(stdin.readLineSync()!);
    
    estadoNotas(n1, n2);
}
