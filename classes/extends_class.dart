void main() {
  Client client1 = Client();
  client1.name = 'Anna';
  client1.bankAccount = 'A121ACV54';
}

class Person {
  String? name;
  String? cpf;
  int? age;
}

// [extends] isso é herança (herdar tudo que a outra classe tem: atributos, métodos)
class Client extends Person {
  String? bankAccount;
}