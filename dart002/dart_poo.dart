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



//54. Getters e Setters


//55. Atributos Nullbale


//56. Modificador Static

//57. Modificador Late