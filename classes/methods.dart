void main() {
  Computer.metodoEstatico();

  Computer computer = Computer('Positivo');
  computer.setBrand = 'Apple';

  print(computer.getBrand);

  computer.metodoMaisComplexo([]);
  computer.metodoComArgumentosNomeados('Anna', valueOptional: 'Roncalio');
  computer.metodoComArgumentosNomeados('Anna');
} // método comum

class Computer {
  String _brand;

  // Os três principais métodos especiais

  // 1. Método Construtor
  Computer(this._brand);

  // 2. Método Getter
  String get getBrand {
    return _brand;
  }

  // 3. Método Setter
  set setBrand(String value) {
    _brand = value;
  }

  ///// MÉTODOS NORMAIS

  // Método com retorno diferente e pedindo parâmetros
  List<Map<String, dynamic>> metodoMaisComplexo(List<String> names) {
    List<Map<String, dynamic>> myList = [
      {'name': 'Anna', 'age': 26},
      {'name': 'João', 'age': 22},
    ];
    return myList;
  }

  // Método estático
  static void metodoEstatico() {
    print('É chamado sem instanciar a classe');
  }

  // Métodos com argumentos personalizados
  void metodoComArgumentosNomeados(String value, {String? valueOptional}) {
    print('Hello $value ${valueOptional == null ? ' ' : valueOptional}');
  }
}
