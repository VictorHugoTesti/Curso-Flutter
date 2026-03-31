//45. Exeções e Tentativa/Captura
/*
void main() {
  try {
    int result = 100 ~/ 0;
    print(result);

    double valor = double.parse('50.2a');
    double? valor2 = double.tryParse('50.2a');  //Verifica se o Valor é Valido, retorna NULL
    if(valor2 != null) print(valor);
  } on UnsupportedError {
    print('Caiu no UnsupportedError');
  } on FormatException  catch (error) {
    print('Caiu no FormatException ${error.message}');
  } catch (error) {
    print(error);
    //print(e.runtimeType);
  } finally {
    print('FINAL');
  }
}
*/

//46. Exeções Personalizadas
/*
void main() {
  try {
    funcao(10);
  } on IssoEstaErrado {
    print('Errado!!');
  } catch (e) {
    print(e);
  }
}

void funcao(int x) {
  if (x <= 0) {
    throw IssoEstaErrado();
  }
  print(x);
}

class IssoEstaErrado implements Exception {
  String toString() {
    return 'Voce não pode passar valor Menor ou Igual que 0';
  }
}
*/

//47. Enumeradores
/*
enum StatusPagamento { pendente, pago, reenbolsado }

void main() {
  StatusPagamento status = StatusPagamento.pago;
  switch (status) {
    case StatusPagamento.pendente:
      break;
    case StatusPagamento.pago:
      break;
    case StatusPagamento.reenbolsado:
      break;
  }

  int numStatus = status.index;
  print(numStatus);
  print(StatusPagamento.values[numStatus]);
}
*/

//48. Final x Const
/*
  //Const -> especificado em Tempo de COMPILAÇÃO
  //Final -> especificado em Tempo de EXECUÇÃO

void main() {
  const String nome = 'Daniel';
  //nome = 'hugo';  //Não pode modificar valores CONST
  const idade = 10 + 30;
  const List<String> lista = ['Vitor', 'Hugo'];
  //lista.add('value');

  final DateTime data = DateTime.now();
  //agora = DateTime.now();  //Não pode modificar valores FINAL
  final String sobrenome;
  if(nome == 'Victor') {
    sobrenome = 'Ciolfi';
  } else {
    sobrenome = 'Not Found';
  }
  sobrenome = 'teste';
}
*/

//49. Operadores Cascata

void main() {
  List<String> nomes = [];

  //Retorna o Objeto 'nomes' em uma Nova Lista, permitindo fazer mais de uma Função de uma vez
  List<String> mod = nomes
    ..add('Daniel')
    ..add('Hugo')
    ..remove('Daniel');
  print(mod);
}

List<String> funcao(List<String> lista) {
  return lista
    ..add('Daniel')
    ..add('Hugo')
    ..remove('Daniel');
}

//50. Finalização
