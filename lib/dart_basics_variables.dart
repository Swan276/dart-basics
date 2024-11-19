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