import "dart:io";

void main(){
    int id1, id2;
    
    print("Digite a idade da primeira pessoa");
    id1 = int.parse(stdin.readLineSync()!);
    
    print("Digite a idade da segunda pessoa");
    id2 = int.parse(stdin.readLineSync()!);
    
    if(id1 > id2){
        print("A idade da primeira pessoa é maior");
    } else if (id1 == id2){
        print("A idade de ambos é igual");
    } else {
        print("A idade da segunda pessoa é maior");
    }
}
