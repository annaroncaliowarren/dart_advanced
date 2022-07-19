void main() {
  Client client1 = Client();
  client1.name = 'Anna';
  client1.bankAccount = 'A121ACV54';
  client1.birthday = 1996;

  print(client1.getAge());
  client1.login();
}

class Person {
  String? name;
  String? cpf;
  int? birthday;

  int getAge() {
    if (birthday != null) {
      return (DateTime.now().year) - birthday!;
    } else {
      return 0;
    }
  }

  void login() {
    print('Login padrão');
  }
}

// [extends] isso é herança (herdar tudo que a outra classe tem: atributos, métodos)
class Client extends Person {
  String? bankAccount;

  // herança um método e sobrescrevendo ela
  @override
  void login() {
    super.login(); // acessando o método login da classe pai
    print('Login como cliente');
  }
}
