class Contato {
  final String nome;
  final String fone;

  Contato(
    this.nome,
    this.fone,
  );

  @override
  String toString() {
    return 'Contato{nome: $nome, fone: $fone}';
  }
}
