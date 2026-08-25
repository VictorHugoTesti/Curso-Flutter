//60. Herança
/*
void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = 'Rex';
  cachorro1.idade = 5;
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  Gato gato1 = Gato();
  gato1.nome = 'Fiote';
  gato1.idade = 5;
  gato1.vidas--;
  gato1.comer();
  gato1.dormir();
  gato1.Miar();
}

class Animal {
  String? nome;
  int? idade;

  void comer() {
    print('Comer');
  }

  void dormir() {
    print('Dormir');
  }
}

class Cachorro extends Animal {
  void latir() {
    print('Auauauua');
  }
}

class Gato extends Animal {
  int vidas = 7;

  void Miar() {
    print('Miaauuuu');
  }
}
*/

//61. Vantagens da Herança
/*
void main() {
  Cachorro cachorro1 = Cachorro();

  Gato gato1 = Gato();

  List<Animal> animais = [];
  animais.add(cachorro1);
  animais.add(gato1);

  Animal animal1 = funcao();
  if (animal1 is Cachorro)
    animal1.latir();
  else if (animal1 is Gato)
    animal1.Miar();
}

Animal funcao() {
  return Cachorro();
}

class Animal {
  String? nome;
  int? idade;

  void comer() {
    print('Comer');
  }

  void dormir() {
    print('Dormir');
  }
}

class Cachorro extends Animal {
  void latir() {
    print('Auauauua');
  }
}

class Gato extends Animal {
  int vidas = 7;

  void Miar() {
    print('Miaauuuu');
  }
}
*/

//62. Reescrita de Métodos
/*
void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = 'Rex';
  cachorro1.idade = 5;
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato();
  gato1.nome = 'Fiote';
  gato1.idade = 8;
  gato1.vidas--;
  gato1.comer();
  gato1.dormir();
  gato1.Miar();

  print(gato1);

}

class Animal {
  String? nome;
  int? idade;

  void comer() {
    print('Comer');
  }

  void dormir() {
    print('Dormir');
  }

  @override
  String toString() {
    return 'Nome: $nome Idade: $idade';
  }
}

class Cachorro extends Animal {
  void latir() {
    print('Au Au');
  }

  @override
  void dormir() {
    print('Dormiu Roncando');
  }

  @override
  String toString() {
    return 'Cahorro: $nome Idade: $idade';
  }
}

class Gato extends Animal {
  int vidas = 7;

  void Miar() {
    print('Miaauuuu');
  }

  @override
  String toString() {
    return 'Gato: $nome Idade: $idade';
  }
}
*/

//63. Keyword Super
/*
void main() {
  Cachorro cachorro1 = Cachorro('Rex', 5);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato('Fiote', 8);
  gato1.vidas--;
  gato1.comer();
  gato1.dormir();
  gato1.Miar();

  print(gato1);
}

class Animal {
  Animal(this.nome, this.idade) {
    print('Adicionado: $nome');
  }

  String nome;
  int idade;

  void comer() {
    print('Comer');
  }

  void dormir() {
    print('Dormir');
  }

  @override
  String toString() {
    return 'Nome: $nome Idade: $idade';
  }
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  void latir() {
    print('Au Au');
  }

  @override
  void dormir() {
    super.dormir();
    print('Roncando');
  }

  @override
  String toString() {
    return 'Cahorro: $nome Idade: $idade';
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);

  int vidas = 7;

  void Miar() {
    print('Miaauuuu');
  }

  @override
  String toString() {
    return 'Gato: $nome Idade: $idade';
  }
}
*/

//64. Operador Cast
/*
void main() {
  Cachorro cachorro1 = Cachorro('Rex', 5);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato('Fiote', 8);
  gato1.vidas--;
  gato1.comer();
  gato1.dormir();
  gato1.Miar();

  print(gato1);

  Cachorro animal1 = funcao() as Cachorro;
  animal1.latir();
}

Animal funcao() {
  return Cachorro('Dog', 2);
}

class Animal {
  Animal(this.nome, this.idade) {
    print('Adicionado: $nome');
  }

  String nome;
  int idade;

  void comer() {
    print('Comer');
  }

  void dormir() {
    print('Dormir');
  }

  @override
  String toString() {
    return 'Nome: $nome Idade: $idade';
  }
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  void latir() {
    print('Au Au');
  }

  @override
  void dormir() {
    super.dormir();
    print('Roncando');
  }

  @override
  String toString() {
    return 'Cahorro: $nome Idade: $idade';
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);

  int vidas = 7;

  void Miar() {
    print('Miaauuuu');
  }

  @override
  String toString() {
    return 'Gato: $nome Idade: $idade';
  }
}
*/

//65. Classes Abstratas

void main() {
  Cachorro cachorro1 = Cachorro('Rex', 5);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato('Fiote', 8);
  gato1.vidas--;
  gato1.comer();
  gato1.dormir();
  gato1.Miar();

  print(gato1);
}

abstract class Animal {
  Animal(this.nome, this.idade) {
    print('Adicionado: $nome');
  }

  String nome;
  int idade;

  void comer() {
    print('Comer');
  }

  void dormir() {
    print('Dormir');
  }

  @override
  String toString() {
    return 'Nome: $nome Idade: $idade';
  }

  void morrer();
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  void latir() {
    print('Au Au');
  }

  @override
  void dormir() {
    super.dormir();
    print('Roncando');
  }

  @override
  String toString() {
    return 'Cahorro: $nome Idade: $idade';
  }

  @override
  void morrer() {
    print('Atropelado');
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);

  int vidas = 7;

  void Miar() {
    print('Miaauuuu');
  }

  @override
  String toString() {
    return 'Gato: $nome Idade: $idade';
  }

  @override
  void morrer() {
    vidas--;
    print('Vidas Restantes: $vidas');
  }
}


//66. Interfaces


//67. Outro Uso para Interfaces


