class Contact {
  final int id;
  final String name;
  final int cpf;

  Contact(
      this.id,
      this.name,
      this.cpf,
      );

  @override
  String toString() {
    return 'Contact{id: $id, name: $name, accountNumber: $cpf}';
  }
}