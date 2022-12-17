void main() {
  List<Person> persons = [];

  persons.add(
    Person(
      name: "Miraz",
      age: 20,
      height: 5.6,
      weight: 65,
    ),
  );

  persons.add(
    Person(
      name: "Rakib",
      age: 21,
      height: 5.5,
    ),
  );

  for (var person in persons) {
    print("BMI of $person is ${person.calculateBMI()}");
  }

  print(persons);
}

// This is class
class Person {
  String name;
  int age;
  double? height;
  double? weight;

  // Person(
  //   this.name,
  //   this.age,
  //   this.height,
  // ); // Positional arguments

  Person({
    required this.name,
    required this.age,
    this.height,
    this.weight,
  }); // Named arguments

  // Calculate BMI by age, height and weight, The height is in inches and weight is in Kilogram
  double calculateBMI() {
    return weight! / (height! * height!) * 703;
  }
}
