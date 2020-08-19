//Funções Dart
soma(a, b) {
  return a + b;
}

main() {
//Variáveis

  //Tipos Primitivos
  int numb = 1;
  double doub = 1.2;
  String stri = 'Jorge Pereira ';
  bool boole = true;

  // Inferencia
  var inf = 'ABC';

  //Estruturas
  //Lista
  var nomes = ['ABC', 'DEF', 'GHI'];
  var conju = {'ABC', 'DEF', 'GHI'};

  //Forçar tipo conjunto
  Set<String> conj = {'ABC', 'DEF', 'GHI'};

  Map<String, int> notas = {
    'Ana': 9,
    'Lucas': 8,
  };

  //Operações com Estruturas
  nomes.add('JKL');

  //Ler Listas
  for (var chave in notas.keys) {
    print('key = $chave');
  }

  print("  ");

  for (var registro in notas.entries) {
    print('${registro.key} = ${registro.value}');
  }

  //Executando função
  final r = soma(1, 5);

  print("O valor é: $r ");
}
