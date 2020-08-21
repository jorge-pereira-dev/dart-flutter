import './pessoa.dart';

//O "_" antes da variável representra que o atributo é privado
/*class Pessoa {
  String nome;
  String _cpf;
}*/

main() {
  var p1 = Pessoa();
  p1.nome = 'João';
  p1.set_cpf = 'aaaa';

  print('${p1.nome} CPF: ${p1.get_cpf}');
}
