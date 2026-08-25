//60. Herança
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


//61. Vantagens da Herança


//62.