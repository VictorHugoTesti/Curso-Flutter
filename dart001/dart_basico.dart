
//13.Conheça o DartPad
/*
void main () {
  print("Olá");
  print("Mundo");

  //Line of Comment
  /* Comment Block */
}
*/


//14. Variáveis Básicas
/*
void main () {
  int age = 20;
  string name = "Victor";
  double distancia = 13.22;

  print(age);
  print(name);
  print(distancia);

  age = 21;
  name = 'Hugo'

  print(age);
  print(name);
}
*/

//15. Operadores Aritméticos
/*
void main () {
  double n1 = 10.5;
  double n2 = 45.5;
  int n3 = 3;

  double r1 = n1 + n2 + n3;

  print(r1)

  n1 += 10;
  print(n1);

  n3++;
  print(n3);

  int r2 = n3 % 2;
  print (r2);
}
*/

// 16. Tomando Decições
/*
void main () {
  int idade = 16;

  if(idade >= 18) {
    print ("Maior de Idade: ", idade);
    print('Ola');
  } else {
    print ("Menor de Idade: ", idade);
    print('Tchau');
  }
}
*/

//17. Operadores Lógicos
/*
void main () {
  int n = 10;
  int n2 = 13
  bool r = n <= n2;
  bool r1 = 10 <=20 && 10 >= 5;
  bool r2 = 10 <=20 || 10 >= 5;

  // ==
  // !=
  // >
  // <
  // >=
  // <=

  /*
  AND (E/&&)  |   OR (OR/||)
  F + F = F   |   F + F = F
  T + F = F   |   T + F = T
  F + T = F   |   F + T = T
  T + T = T   |   T + T = T
  */

  print(!r, r1, r2);
}
*/

//18. If/Else/Else If
/*
void main () {
  double nota = 8.4;
  double recuperacao = 3.0;

  /*
  if(nota >= 5.0) {
    print('Aprovado');
  } else if (nota >= 3.5) {
    print("Recuperação");
    if(recuperacao > = 6.0) {
      print('Aprovado por Recuperação');
    } else {
      print(' Reprovado por Recuperação');
    }
  } else {
    print('Reprovado');
  }
  */

  if(nota >= 5.0) {
    print('Aprovado');
  } else if (nota >= 3.5 && recuperacao >= 6.0) {
  print('Aprovado por Recuperação');
  } else if (nota >= 3.5 && recuperacao < 6.0) {
    print('Reprovado por Recuperação');
  } else {
    print('Reprovado');
  }
}
*/

//19. Operador Ternário
/*
void main() {
  double nota = 8;
  String mensagem = nota >= 5 ? 'Aprovado' : 'Reprovado';

  int num = nota == 5 && nota != 7 ? 10: 2;

  print(mensagem, num);
}
*/

//20. Switch
/*
void main () {
  String linguagem = 'dart';
  /*
  if(linguagem == 'dart') {
    print('Legal');
  } else if (linguagem == 'C') {
    print('Complicada');
  } else if(linguagem == 'Swift') {
    print('Muito Complicada');
  } else {
    print('Desconhecida!');
  }
  */

  switch(linguagem) {
    case 'Dart':
      print('Legal');
      break;
    case 'C' :
      print('Complicada');
      break;
    case 'Swift':
      print('Muito Complicada');
      break;
    default:
      print('Desconhecida!');
  }

  int n = 10;
  switch(n) {
    case 10:
      print('10');
      break;
    case 20:
      print('Olá');
      break;
  }
}
*/

//21. While Loop
/*
void main () {
  int i = 0;
  int j = 100;
  int k = 75;

  /*
  print(0);
  print(1);
  print(2);
  print(3);
  print(4);
  print(5);
  */

  while( i <= 100) {
    print(i);
    i++;
  }

  while( j >= 0) {
    print(i);
    i--;
  }

  while( j >= 0 && k > -200) {
    print(i);
    print(j);
    i--;
    j -= 10;
  }

  while( j >= 0 || k > -200) {
    print(i);
    print(j);
    i--;
    j -= 10;
  }

  print('Fim!');
}
*/

