
void main() {
  saudacoes('Victor', sep: '=', mostraragora: false);
  saudacoes('João', sep: '*');

  String a = agora();
  print(a);
  print(agora());
}

// 24. Introdução as Funções

void saudacoes (String nome, {bool mostraragora = true, String sep = '-'}) {

  print(sep * 20);
  print('Saudações do $nome');
  print("Seja Bem Vindo!");

  if(mostraragora) {
    print('Agora: ${agora()}');
  }
}

// 25. Retorno de Funções

String agora () {
  DateTime agora = DateTime.now();
  return agora.toString();
}

// 26. Paramêtros de Funções

//Função saudacoes