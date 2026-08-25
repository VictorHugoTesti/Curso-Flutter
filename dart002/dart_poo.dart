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
/*
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
*/

//55. Atributos Nullable
/*
void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Victor', idade: 20);
  Pessoa pessoa2 = Pessoa(nome: 'Hugo', idade: 30, casado: true);

  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 1000000000;

  if(pessoa1.dinheiro > 150) {
    print(pessoa1.dinheiro);
  }

  String? nome = pessoa1.nomeSecreto;
  if(nome != null) print(nome.toUpperCase());
  
  if(pessoa1.atributo != null) print(pessoa1.atributo!.toUpperCase());
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado=false}) {
    print('Criando o $nome com idade $idade');
  }

  String nome;
  int idade;
  bool casado;

  double _dinheiro = 0;

  String? _nomeSecreto = 'Flutter';

  get nomeSecreto {
    String? nome = nomeSecreto;
    if(nome != null) {
      _nomeSecreto = null;
      return nome;
    } else {
      return null;
    }
  }

  String? atributo = 'Ola';

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

  set dinheiro(double valor) {
    if(valor >= 0 && valor < 1000000) {
      print("Alteração no Saldo de $nome");
    _dinheiro = valor;
    }    
  }

  double get dinheiro {
    print('Lendo Dinheiro de $nome');
    _dinheiro -= 100;
    return _dinheiro;
  }
}
*/

//56. Modificador Static
/*
void main() {
  Pessoa.alturaPadrao = 1.80;

  Pessoa pessoa1 = Pessoa(nome: 'Victor', idade: 20);
  pessoa1.nome;
  pessoa1.idade;

  print(pessoa1.altura);

  Pessoa.atributoStatic = ', Victor';
  print(Pessoa.atributoStatic);

  print(Pessoa.metodoStatic());
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;

  double altura = alturaPadrao;

  void comer() {
    print('comendo...');
  }

  static String atributoStatic = 'abc';

  static String metodoStatic() {
    return 'Olá Mundo $atributoStatic';
  }

  static double alturaPadrao = 0;
}
*/

//57. Modificador Late
/*
void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Victor', idade: 20);
  pessoa1.cpf = '123.456.789-00';

  print(pessoa1.cpf);
  print(pessoa1.temperatura);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;

  late String cpf;

  late double temperatura = medirTemperatura();

  double medirTemperatura() {
    print('Temperatura Medida');
    return 37.0;
  }
}
*/

//58. Operador ?.
/*
void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Victor', idade: 20);
  print(pessoa1.nome);
  print(pessoa1.idade);

  Pessoa? pessoa2;
  print(pessoa2?.nome.toUpperCase());
  print(pessoa2?.idade);
  print(pessoa2?.cidade?.toUpperCase());
  pessoa2?.comer();
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;

  String? cidade;

  void comer() {
    print('Comendo...');
  }
}
*/

//59. Passagem de Referência

void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Victor', idade: 20);
  print(pessoa1.nome);
  print(pessoa1.idade);

  Pessoa pessoa2 = pessoa1;
  print(pessoa2.nome);
  print(pessoa2.idade);

  // funcao(pessoa1);
  // print(pessoa1.idade);

  int num = 10;
  funcao(num);
  print(num);
}

// void funcao(Pessoa pessoa) {
//   pessoa.idade++;
// }

void funcao(int X) {
  X = 20;
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
}
