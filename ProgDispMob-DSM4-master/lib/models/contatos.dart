class Contato {
  final String nome;
  final String endereco;
  final String telefone;
  final String email;
  final String numeroCpf;

  Contato(
    this.nome,
    this.endereco,
    this.telefone,
    this.email,
    this.numeroCpf,
  );

  @override
  String toString() {
    return 'Contato{ nome: $nome, endereco: $endereco, telefone: $telefone, email: $email, cpf: $numeroCpf}';
  }
}
