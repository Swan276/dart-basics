void classes() {
  final person = Person(name: "Swan", age: 24);
  // print(person.name);
  // print(person.age);
  person.introduce();
  print(Person.type);
  Person.type = 2;
  print(Person.type);
  print(Person.getType());

  final admin = PortalUser.admin(1);
  print(admin);
  final dev = PortalUser.developer(2, username: "Swan");
  print(dev);
  final user = PortalUser.user(3, username: "John");
  print(user);
  final dummyUser = PortalUser.dummy(4);
  print(dummyUser);
  final operator = PortalUser.operator(id: 5, username: "Jane");
  print(operator);

  final vec1 = Vector(1, 2);
  final vec2 = Vector(2, 2);
  final vec3 = vec1 + vec2;
  print(vec3);

  final counter = Counter();
  print(counter);
  print(counter.count);
  counter.increase = 1;
  print(counter.count);
  counter.decrease = 2;
  print(counter.count);
  counter.increaseBy1();
  print(counter.count);
}

class Person {
  Person({required String name, int age = 0}) : _name = name, _age = age;

  static int type = 1;

  final String _name;
  final int _age;

  void introduce() {
    print("Hi my name is $_name. I'm $_age years old");
  }

  static int getType() => type;
}

class PortalUser {
  PortalUser({
    required this.id,
    required this.username,
    required this.password,
    this.permissions = const [],
  });

  final int id;
  final String username;
  final String password;
  final List<String> permissions;
  
  PortalUser.admin(this.id) : username = "admin", password = "admin", permissions = ["create", "update", "retrieve", "delete"];

  PortalUser.developer(this.id, {required this. username}) : password = "admin", permissions = ["update", "retrieve"];

  PortalUser.user(this.id, {required this. username}) : password = "admin", permissions = ["retrieve"];

  PortalUser.dummy(int id) : this(id: id, username: "dummy", password: "dummy");

  factory PortalUser.operator({required int id, required  String username}) {
    return PortalUser(id: id, username: username, password: "asdf", permissions : ["create", "update", "retrieve", "delete"]);
  }

  factory PortalUser.fromJson(Map<String, dynamic> json) {
    return PortalUser(
      id: json["id"] as int,
      username: json["username"] as String,
      password: json["password"] as String,
      permissions: json["permissions"],
    );
  }

  @override
  String toString() => "PortalUser{id: $id, username: $username, password: $password, permssions: $permissions}";
}

class Vector {
  Vector(this.x, this.y);

  final int x;
  final int y;

  int area() => x * y;

  Vector operator +(Vector other) => Vector(x + other.x, y + other.y);
  Vector operator -(Vector other) {
    return Vector(x - other.x, y - other.y);
  }

  @override
  bool operator ==(Object other) {
    return other is Vector && x == other.x && y == other.y;
  }

  @override
  int get hashCode => Object.hash(x, y);

  @override
  String toString() {
    return "Vector{x: $x, y: $y}";
  }
}

class Counter {
  Counter(): _count = 0;

  int _count;

  int get count => _count;

  set increase(int amount) => _count += amount;
  set decrease(int amount) => _count -= amount;
  
  void increaseBy1() => _count += 1;
  void decreaseBy1() => _count -= 1;

  @override
  String toString() => "Counter{count: $count}";
}