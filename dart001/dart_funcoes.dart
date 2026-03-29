
// 24. Introdução as Funções

void main() {
  saudacoes();

  String a = agora();
  print(a);
  print(agora());
}

void saudacoes () {
  print('Saudações do Victor');
  print("Seja Bem Vindo!");
  print('Agora: ${agora()}');
}

// 25. Retorno de Funções

String agora () {
  DateTime agora = DateTime.now();
  return agora.toString();
}