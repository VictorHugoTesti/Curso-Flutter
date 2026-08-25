//51. Classes, Objetos e Atributos
/*
void main() {
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Victor';
  pessoa1.idade = 20;

  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.casado);

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome= 'Hugo';
  pessoa2.casado = true;

  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);
}

class Pessoa {
  String? nome;
  int? idade;
  bool casado = false;
}
*/

//52. Métodos
/*
void main() {
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Victor';
  pessoa1.idade = 20;

  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.casado);

  print(pessoa1.aniversario());

  pessoa1.casar();
  print(pessoa1.casado);

  //-----------------------------------//

  Pessoa pessoa2 = Pessoa();
  pessoa2.alterarNome('Hugo');
  pessoa2.idade = 30;
  pessoa2.casado = true;

  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);
  
  print(pessoa2.aniversario());
}

class Pessoa {
  String? nome;
  int? idade;
  bool casado = false;

  int? aniversario() {
    print('Parabéns! $nome');
    if(idade != null) idade = idade! + 1;

    return idade;
  }

  void casar() {
    casado = true;
  }

  void alterarNome(String n) {
    nome = n;
  }
}
*/

//53. Construtores e Construtores Nomeados
/*
void main() {
  Pessoa pessoa1 = Pessoa.solteira(nome: 'Victor', idade: 20);

  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.casado);

  print(pessoa1.aniversario());

  pessoa1.casar();
  print(pessoa1.casado);

  //-----------------------------------//

  Pessoa pessoa2 = Pessoa.casada(nome: 'Hugo', idade: 30);
  pessoa2.casado = true;

  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);

  print(pessoa2.aniversario());
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado=false}) {
    print('Criando o $nome com idade $idade');
  }

  // Pessoa({required String nome, required int idade}) {
  //   this.nome = nome;
  //   this.idade = idade;
  // }

  Pessoa.casada({required String nome, required int idade, this.casado=true});

  Pessoa.solteira({required String nome, required int idade, this.casado=false});

  String nome;
  int idade;
  bool casado;

  int? aniversario() {
    print('Parabéns! $nome');
    idade++;

    return idade;
  }

  void casar() {
    casado = true;
  }

  void alterarNome(String n) {
    nome = n;
  }
}
*/

//54. Getters e Setters

void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Victor', idade: 20);
  Pessoa pessoa2 = Pessoa(nome: 'Hugo', idade: 30, casado: true);

  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 1000000000;

  print(pessoa1.dinheiro);
  print(pessoa2.dinheiro);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado=false}) {
    print('Criando o $nome com idade $idade');
  }

  String nome;
  int idade;
  bool casado;

  double? _dinheiro;

  int aniversario() {
    print('Parabéns! $nome');
    idade++;

    return idade;
  }

  void casar() {
    casado = true;
  }

  void alterarNome(String n) {
    nome = n;
  }

  set dinheiro(double? valor) {
    if(valor != null && valor >= 0 && valor < 1000000) {
      print("Alteração no Saldo de $nome");
    _dinheiro = valor;
    }    
  }

  double? get dinheiro {
    print('Lendo Dinheiro de $nome');
    return _dinheiro;
  }
}


//55. Atributos Nullbale


//56. Modificador Static


//57. Modificador Late


//58. Operador ?.