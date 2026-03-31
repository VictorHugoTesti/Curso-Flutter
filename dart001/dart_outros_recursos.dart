//45. Exeções e Tentativa/Captura

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




//46. Exeções Personalizadas



//47. Enumeradores




//48. Final x Const


//49. Operadores Cascata



//50. Finalização