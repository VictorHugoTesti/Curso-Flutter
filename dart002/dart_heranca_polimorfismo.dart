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


//63. Keyword Super


//64. Operador Cast


//65. Classes Abstratas


//66. Interfaces


//67. Outro Uso para Interfaces


