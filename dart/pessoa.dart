class Pessoa {
  String nome;
  String _cpf;

  get get_cpf {
    return _cpf;
  }

  set set_cpf(String novoCPF) {
    this._cpf = novoCPF;
  }
}
