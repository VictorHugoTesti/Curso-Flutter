//51. Classes, Objetos e Atributos
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

//52. Métodos


//53. Construtores e Construtores Nomeados


//54. Getters e Setters


//55. Atributos Nullbale


//56. Modificador Static

//57. Modificador Late