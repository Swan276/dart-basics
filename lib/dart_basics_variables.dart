void variables() {
  // variable assigning
  // var
  var count = 1;
  count = 2;
  print(count);
  // data type
  int index = 0;
  index = 2;
  print(index);
  // final
  final String name = "Swan";
  // const
  const int age = 24;

  // nullable
  String? userSessionToken = "123123";
  userSessionToken = null;
  if (userSessionToken != null) {
    print("Logged In");
  } else {
    print("Logged Out");
  }

  // late
  late final String id;
  id = "12132";
  late String token = getToken(1);
  String token2 = getToken(2);
  print(token);
  print(token2);
}

void operators() {
  double modulus = 1 / 2;
  int remainder = 1 ~/ 2;

  String? bio = null;
  final defaultedBio =  bio ?? "there's no bio yet";

  // == != > < >= <=
  int sum = 1 + 2;
  sum += 3;
  print(sum);

  int count = 0;
  print(count++);
  print(count);
  print(--count);

  final person = Person()..eat()..walk();
  print(person.activities);

  // asdasdf
  /*
  asdfasdf
  */

  var count1 = 0;
  if (count1 is String) {
    print("count1 is string");
  } else {
    print("count1 is something else");
  }

  int number = 9;

  if (number ~/ 2 == 1) {
    print("Odd");
  } else {
    print("Even");
  }

  print(number ~/ 2 == 1 ? "Odd" : "Even");
}

void datatypes() {
  // Numbers (int, double)
  // Strings (String)
  // Booleans (bool)
  // Records ((value1, value2))
  // Functions (Function)
  // Lists (List, also known as arrays)
  // Sets (Set)
  // Maps (Map)
  // dynamic
  // void
  // num

  dynamic count = 0;
  count = "123";

  String numberStr = "abc";
  final number = int.tryParse(numberStr);
  print(number ?? 0);
  String doubleStr = "12.34";
  final point = double.parse(doubleStr);
  print(point);

  print(parseJson("123"));
  print(parseJson(123));

  String multiline = """line1
line 2
line 3
""";
print(multiline);

  print("count: $count");
  print("data: ${parseJson(123)}");
}

void records() {
  (int, String) record = (1, "2");
  print(record.$1);
  print(record.$2);

  int a = 1;
  int b = 2;
  (a, b) = swap(a, b);
  print(a);
  print(b);

  ({int page, String heading}) title = (page: 1, heading: "Introduction");
  print("Page no. ${title.page}, Heading ${title.heading}");

  String person1 = "John";
  String person2 = "Doe";
  final (:swappedPerson1, :swappedPerson2) = namedSwap(person1, person2);
  print(swappedPerson1);
  print(swappedPerson2);
}

void list() {
  // Collections
  // List, Set, Map
  var list = [1, 3, 4, 6, "Car"];
  print(list);
  List list1 = [1, 2, 3 , false];
  List<String> countries = ["Myanmar", "Thai", "UK"];
  print(countries[0]);
  print(countries.length);
  print(countries.reversed.toList());
  
  countries.add("USA");
  print(countries);
  countries.addAll(["Mexico", "Canada"]);
  print(countries);
  countries[0] = "Burma";
  print(countries);

  List<String> people = const ["John", "Jane", "Jack"];
  // error code
  // people[1] = "May";
  // people.add("May");
  people = ["John", "Jane", "Jack", "May"];
  print(people);

  final List<String> countryCodes = const ["+95", "+66"];
  
  print(countryCodes);
  // error code
  // countryCodes.add("+92");
  print(countryCodes);

  final group = ["Swan"];
  final newGroup = addToGroup(group, "John");
  print(newGroup);

  final group1 = ["Swan", "John"];
  final group2 = ["Jane", "May"];
  final newWholeGroup = [...group1, ...group2];
  print(newWholeGroup);

  final newCountryCodesList = [...countryCodes, "+92"];
  print(newCountryCodesList);

  final [swan, john] = group1;
  print(swan);
  print(john);
}

void branching() {
  int statusCode = 404;

  switch (statusCode) {
    case 500:
      print("Server Error");
      break;
    case 400:
      print("Bad Request");
    case 401:
      print("Unauthorized");
    case 404:
      print("Not Found");
    default:
      print("Unknown Error");
  }

  final orderState = OrderStates.deliveryTakingOrder;

  final orderStatus = switch (orderState) {
    OrderStates.orderSet => "Pls Wait",
    OrderStates.preparingInKitchen || OrderStates.deliveryTakingOrder => "Preparing",
    OrderStates.delivering => "Delivery on the way",
    OrderStates.delivered => "Order delivered! Pls enjoy",
    _ => "Error Order",
  };
  print(orderStatus);
}

void errorHandling() {
  // throw "string errror";
  // throw CustomError("Some Error");
  // throw 1;

  final userInput = "1234";
  // try {
  //   operate(userInput);
  //   print("set lote");
  // } on CustomError catch (customError) {
  //   print(customError.message);
  // } on String catch (stringError) {
  //   print(stringError);
  // } catch (e) {
  //   print("error operating user input");
  // }
  handle(() {
    operate(userInput);
  });
}

void functions() {
  hello(1, 2, 3);
  helloNamed(b: 1, a: 2);
  helloOptional(1, 2);
  helloPositionalNamed(1, b: 2, c: 3);
  createUser(id: "id", name: "Swan", age: 123, email: "email", phoneNo: "123123", addr: "addr");

  final numberList = [1,2,3,4,5,6,7,8,9];
  handleNumbers(numberList, (number) {
    print(number * number);
  });
}

void generic() {
  final numSum = add(1, 2);
  print(numSum);
  final stringSum = add("Hello", "World");
  print(stringSum);
  final listSum = add<List<dynamic>>([1,2,3], [3,4,5]);
  print(listSum);
  final union = unionList([1,2,3], [3,4,5]);
  print(union);

  final stringCache = Cache<String>();
  stringCache.put("name", "Swan");
  print(stringCache.get("name"));

  final intCache = Cache<int>();
  intCache.put("userId", 123456);
  print(intCache.get("userId"));

  final userCache = Cache<User>();
  userCache.put("admin", User(1, "Swan"));
  print(userCache.get("admin"));

  int? nullableNum = null;
  int sum = 1 + nullableNum!;
  print(sum);

  final Cache<int>? store = null;
  store?.put("key1", 1);
  final result = store?.get("key1");
}

String getToken(int number) {
  print("getting token $number");
  return "fake token $number";
}

class Person {
  int activities = 0;

  /// This describes a person
  void walk() {
    activities++;
    print("walking");
  }

  void eat() {
    activities++;
    print("eating");
  }
}

String parseJson(dynamic data) {
  try {
    return data as String;
  } catch (e) {
    return data.toString();
  }
}

(int, int) swap(int a, int b) {
  return (b, a);
}

({String swappedPerson1, String swappedPerson2}) namedSwap(String person1, String person2) {
  return (swappedPerson1: person2, swappedPerson2: person1);
}

List<String> addToGroup(List<String> group, String person) {
  group.add(person);
  return group;
}

final coc = [1,2,4,5];

enum OrderStates {
  orderSet,
  preparingInKitchen,
  deliveryTakingOrder,
  delivering,
  delivered, error;
}

void operate(String userInput) {
  late final int number;
  try {
    number = int.parse(userInput);  
    throw Exception("Memory Out of Bound");
  } on FormatException catch (e) {
    throw "Pls input number only";
  } catch (_) {
    rethrow;
  }

  if (number == 123) {
    throw CustomError("Pls do not enter 123");
  }
}

void handle(void Function() callback) {
  try {
    callback();
  } on FormatException catch (formatE) {
    print("asldfsl");
  } on CustomError catch (customError) {
    print(customError.message);
  } on String catch (s) {
    print(s);
  } catch (e) {
    print("Error");
  }
}

class CustomError {
  CustomError(this.message);

  final String message;

  @override
  String toString() => "CustomError(message: $message)";
}

// positional argument
void hello(int a, int b, int c) {

  }

// named argument
void helloNamed({required int a, required int b, int? c}) {

}

// optional positional argument
void helloOptional(int a, int b, [int? c]) {

}

// positional + named argument
void helloPositionalNamed(int a, {required int b, int? c}) {

}

void createUser({required String id,required  String name,required  int age,required  String email,required  String phoneNo,required  String addr}) {

}

void handleNumbers(List<int> numberList, void Function(int number) callback) {
  for (var number in numberList) {
    callback(number);
  }
}

T add<T>(T a, T b) {
  if (a is num && b is num) {
    return a + b as T;
  } else if (a is String && b is String) {
    return a + b as T;
  } else if (a is List && b is List) {
    return [...a, ...b] as T;
  } else {
    throw Exception('Unsupported type');
  }
}

List<T> unionList<T>(List<T> a, List<T> b) {
  return [...a, ...b];
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

class User {
  const User(this.id, this.name);

  final int id;
  final String name;

  @override
  String toString() => "User{id: $id, name: $name}";
  
}