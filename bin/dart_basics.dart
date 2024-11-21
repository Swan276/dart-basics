

import 'package:dart_basics/dart_basics_variables.dart';
import 'package:dart_basics/dart_classes.dart';

void main(List<String> arguments) {
  // variables();
  // operators();
  // datatypes();
  // records();
  // branching();
  // errorHandling();
  // functions();
  // generic();
  classes();
  
  final securedCache = SecuredCache<String>();
  securedCache.put("key", "value");
  print(securedCache.get("key"));

  final animal = Dog();
  animal.makeSound();
  print(animal.species);

  final Db db = SQLDb();
  final Db db2 = NonSQLDb();
}

class Cache<T> {
  final Map<String, dynamic> _cache = {};

  void put(String key, T value) {
    print("Type of value ${value.runtimeType}");
    _cache[key] = value;
  }

  T get(String key) {
    return _cache[key];
  }
}

class SecuredCache<T> extends Cache<T> with Crypto, Logger {
  @override
  void put(String key, T value) {
    log("Putting $key: $value");
    final encryptedValue = encrypt(value);
    super.put(key, encryptedValue);
  }

  @override
  T get(String key) {
    log("Getting $key");
    final value = super.get(key);
    return decrypt(value);
  }
}

mixin Crypto {
  T encrypt<T>(T value) {
    print("Encrypting...");
    return value;
  }

  T decrypt<T>(T value) {
    print("Decrypting...");
    return value;
  }
}

mixin Logger {
  void log(String message) {
    print(message);
  }
}

abstract class Animal {
  String species = "Animal";

  void makeSound();
  void eat() {
    print("asdf");
  }
}

class Dog extends Animal {
  @override
  String species = "Dog";

  @override
  void makeSound() {
    print("Wolfff");
  }
}

abstract interface class Db {
  void create();
  void update() {
    print("asdf");
  }
}

class SQLDb implements Db {
  @override
  void create() {
    // TODO: implement create
  }
  
  @override
  void update() {
    // TODO: implement update
  }
}

class NonSQLDb implements Db {
  @override
  void create() {
    // TODO: implement create
  }

  @override
  void update() {
    // TODO: implement update
  }

}