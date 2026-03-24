class Pessoa {
    String _nome = "";
    int _idade = 0;
    
    String get nome => _nome;
    int get idade => _idade;
    
    set nome(String novoNome){
        _nome = novoNome;
    }
    
    set idade(int novaIdade){
        _idade = novaIdade;
        if(_idade > 18){
            print("Você é maior de idade. Acesso liberado!");
        } else {
            print("Você é menor de idade. Acesso negado!");
        }
    }
}

void main(){
    Pessoa pessoa = Pessoa();
    pessoa.nome = "Danilo";
    
    pessoa.idade = 19;
    print("Seu nome é ${pessoa.nome} e tem ${pessoa.idade} anos");
    
    pessoa.nome = "Murilo";
    pessoa.idade = 15;
    print("Seu nome é ${pessoa.nome} e tem ${pessoa.idade} anos");
}