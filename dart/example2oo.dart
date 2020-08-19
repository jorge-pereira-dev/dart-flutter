imprimirProduto(int qnt, {String nome, double preco}) {
  for (var i = 0; i < qnt; i++) {
    print("O produto ${nome} tem preço R\$ ${preco}!");
  }
}

class Produto {
  String nome;
  double preco;

// Construtor com Parâmetro  Posicional
  //Produto(this.nome, this.preco);

// Construtor com Parâmetro Nomeado
  Produto({this.nome, this.preco = 9.99});

/* Construtor Simples
  Produto(String nome, double preco)  {
    this.nome = nome;
    this.preco = preco;
  }
*/

}

main() {
  //Parâmetro Posicional
  //var p1 = new Produto('Lápis', 4.99);

  //Parâmetro Nomeado
  var p1 = new Produto(nome: 'Lápis');

  /* Parâmetro Simples
  p1.nome = 'Lápis';
  p1.preco = 4.59;
  */

  print("O produto ${p1.nome} tem preço de: ${p1.preco}");

  imprimirProduto(4, preco: 5, nome: 'Caneta');
}
