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
