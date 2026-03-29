// 24. Introdução as Funções

/*
void main() { 

  String a = agora();
  print(a);
  print(agora());
}

void saudacoes (String nome, {bool mostraragora = true, String sep = '-'}) {

  print(sep * 20);
  print('Saudações do $nome');
  print("Seja Bem Vindo!");

  if(mostraragora) {
    print('Agora: ${agora()}');
  }
}
*/

// 25. Retorno de Funções

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}

// 26. Paramêtros de Funções

/*Função saudacoes */
/*
void main () {
  saudacoes('Victor', sep: '=', mostraragora: false);
  saudacoes('João', sep: '*');
}
*/

// 27. Variaveis Anuláveis
/*
void main() {
  saudacoes('victor');

}

void saudacoes (String nome, {bool mostraragora = true, String? cliente,}) {

  print('Saudações do $nome');

  if(cliente != null) {
      print("Seja Bem Vindo $cliente!");

  }

  if(mostraragora) {
    print('Agora: ${agora()}');
  }
}
*/

// 28. Conversão Anulável > Não Inválida
/*
void main() {
  saudacoes('victor', cliente: 'Hugo');

}

void saudacoes (String nome, {bool mostraragora = true, String? cliente,}) {

  print('Saudações do ${nome.toUpperCase()}');

  String c = cliente ?? 'Não Informado';

  print("Seja Bem Vindo ${c.toUpperCase()}!");

  if(cliente != null) {
      print("Seja Bem Vindo ${cliente.toUpperCase()}!");

  }

  if(mostraragora) {
    print('Agora: ${agora()}');
  }
}
*/

// 29. Resumo sobre Parâmetros
/*
void main() {
  funcao('Olá', null, e: null, d: 'Teste', c: null);
}

void saudacoes(String nome, {bool mostraragora = true, String? cliente}) {
  print('Saudações do $nome');

  if (cliente != null) {
    print("Seja Bem Vindo $cliente!");
  }

  if (mostraragora) {
    print('Agora: ${agora()}');
  }
}

void funcao(
  String a,
  String? b, {
  String? c,
  required String d,
  required String? e,
  String f = 'qwe',
}) {}
*/

// 30. Funções Anônimas
/*
void main() {
  saudacoes(
    'victor',
    corpo: (funcao),
    corpo2: (int i) {
      for (int j = 0; j < i; j++) {
        print('Olá $j');
      }
    },
  );
}

void funcao(int i) {
  for (int j = 0; j < i; j++) {
    print('Olá $j');
  }
}

void saudacoes(
  String nome, {
  bool mostraragora = true,
  String? cliente,
  required Function(int) corpo,
  required Function(int) corpo2,
}) {
  print('Saudações do ${nome.toUpperCase()}');

  corpo(10);

  String c = cliente ?? 'Não Informado';

  print("Seja Bem Vindo ${c.toUpperCase()}!");

  if (mostraragora) {
    print('Agora: ${agora()}');
  }
}
*/

// 31. Retorno de Funções com Nullables
/*
void main () {
  String nome =  funcao();
  String nome2 = funcao2(8) ?? 'Não Informado';
  print(nome2.toUpperCase());
}

String funcao() => 'Victor'.toUpperCase();

// "String?" permite retornar NULL
String? funcao2 (int x) {
  if( x > 10) {
    return 'Olá mundo!';
  }
  return null;
}
*/

// 32. Escopo
/*
//Herança Todas as Variaveis definidas no PAI o Filho tem, POREM as variaveis definidas no filho não tem no PAI
int a = 0;

void main() {
  a = 10;

  void funcao() {
    a = 50;

    int b = 5;

    b = 10;

    void funcao2(int c) {
      b = 20;

      //Variaveis declaradas dentro do corpo tem preferencia em relação as passadas por parametro
      int c = 30;
      print(c);
    }
    c = 40;
  }
  funcao2();
  b = 10;
}
*/