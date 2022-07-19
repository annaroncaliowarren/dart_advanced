void main() {
  Animal animal = Animal(
    name: 'Totó',
    age: 10,
  );

  Cat cat = Cat(name: 'Mimi', age: 3);
  Dog dog = Dog(name: 'totó', age: 10);

  cat.feed();
  dog.feed();
}

class Animal {
  String name;
  int age;

  Animal({
    required this.name,
    required this.age,
  });

  void feed() {
    print('Animal se alimentando');
  }
}

class Dog extends Animal {    
  Dog({
    required super.name,
    required super.age,
  });

  void run() {
    print('Cachorro correndo...');
  }
}

class Cat extends Animal {
  Cat({
    required super.name,
    required super.age,
  });

  void run() {
    print('Gato correndo...');
  }
}
