
//33. Variáveis Dinâmicas
/*
void main() {
  //var adota um tipo especifico e não é possivel mudar
  var nome = 'Victor';
  nome = 'Hugo';

  //nome = 3;

  var idade = 40;
  idade++;

  //dynamic pode trocar para qualquer tipo quando quiser
  dynamic variavel = 'Victor';
  variavel = 3;
  variavel = true; 

  // Quando não se sabe se o dado é INT ou DOUBLE, ele aceita os 2 Tipos
  num numero = 1.363636;
}

void funcao(num numero) {}
*/

//34. Listas
/*
void main() {
  //List tudo === List<dynamic> tudo
  List tudo = ['Victor', 'Hugo', 10, 'João', false, 9.99];

  List<String> nomes = ['Victor', 'Hugo', 'João'];

  print(nomes);

  List<int> idades = [10, 18, 60];

  print(idades.length); // QTTD total de itens dentro da lista
  print(idades.first);  // PRIMEIRO item da lista
  print(idades.last);   // ULTIMO item da lista
  print(idades[0]);     // POSIÇÃO ESPECIFICA dentro da Lista (*COMEÇA NO 0)
}
*/

//36. Funções de Listas
/*
void main() {

  List<int> idades = [10, 18, 60];
  List<int> idades2 = []; //Criado uma Lista Vazia

  idades.add(4);    //Adiciona um item no Final da Lista

  List<int> outrasIdade = [40, 500, 1000];

  idades.addAll(outrasIdade);   //Adiciona mais de 1 item de uma unica Vez no Final Lista
  idades.addAll([41, 501, 1001]);
  idades.insert(0, -2);  //Adiciona o item na posição em que quiser (1° posicao = posição & 2° posicao = valor)
  
  print(idades.contains(50));   //Verifica se um valor existe dentro da Lista, que retorna um BOOL (True/False)
  print(idades.indexOf(18));    //Retorna em qual posição da Lista está o Valor Inserido
  print(idades.remove(500));    //Remove o valor da Lista (Retorna False caso não encontre o Valor)   
  print(idades.removeAt(5));    //Remove por posição, Ou seja, ele removeu o item que estava na posição 5 e retorna o Número removido (41)

  idades.shuffle();   //Embaralha os Itens da Lista Aleatóriamente
  idades.clear();     //Limpa e Remove TODOS os itens da Lista

  print(idades);  
}
*/

//37. Iteração da Lista
/*
void main() {
  List<String> nomes = [
    'Daniel',
    'Victor',
    'Hugo',
    'Marcos',
    'Eliane',
    'Mariane',
    'Ciolfi',
  ];

//Printar os items da Lista em MAIUSCULAS
  //Forma 1
  for(int i = 2; i < nomes.length -1; i++) {
    print(nomes[i].toUpperCase());
  }
  //Forma 2 *sublist printa os valores dentro do intervalo *RECOMENDADA*
  for(String nome in nomes.sublist(2, 4)) {
    print(nome.toUpperCase());
  }
  //Forma 3
  nomes.sublist(1).forEach((nome) {
    print(nome.toUpperCase());
  });


  print(nomes);


}
*/

//38. Outras Funções da Lista

void main() {
  //Lista com o Mesmo elemento repetida Varias Vezes (100 = repetições | Victor = item)
  List<String> maluca = List.filled(100, 'Victor'); 

  //Parecido com o Filled, porem pode utilizar operadores de Multiplicação
  List<int> doida = List.generate(10, (i) => i *10);
  
  print(doida.isEmpty);     //Retorna um BOOL para saber se a Lista está Vazia ou Não
  print(doida.isNotEmpty);  //Mesma coisa do isEmpty porem com a lógica invertida

  doida.removeAt(0);  

  print(doida.any((i) => i % 20 == 0));   //Faz uma Verificação nos Itens da Lista

  print(doida.firstWhere((i) => i % 40 == 0));  //Primeiro item do Resultado da condição (Item = 40)
  print(doida.lastWhere((i) => i % 40 == 0));   //Ultimo item do Resultado da condição (Item = 80)
  print(doida.where((i) => i % 40 == 0));       //Retorna todos os Resultados da condição (Itens = 40, 80)

  //Aplciar uma Operação Aritmética a todos os Itens da Lista e Salvar o Rerulsato em outra Lista
  print(doida.map((i) => i + 1));
}



//39. Listas no Null-Safety




//40. Mapas




//41. Funções de Mapas e Null Assertion




//42. Mapas no Null-Safety




//43. JSON




//44. JSON na Prática



