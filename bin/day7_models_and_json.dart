void main() {
  List<Person> myList = [];
  List<Person> myList2 = [];

  Person p1 = Person(age: 12, name: "Ali");
  Person p2 = Person(name: data[0]["name"], age: data[0]["age"]);
  // print(p2.name);
  // print(p2.age);


  for (var i = 0; i < data.length; i++) {
    Person newPerson = Person(name: data[i]["name"], age: data[i]["age"]);
    myList.add(newPerson);
    print(newPerson.name);
    print(newPerson.age);
  }

  print("=" * 40);
  print(myList[1].name); // it will print name of person in index (1)


  // we want to pint age of Dana only 
  for (var element in myList) {
    if (element.name == "Dana") {
      print(element.age);
    }
  }

// last one, with named constructor

  for (var element in data) {
    print(element);
    myList2.add(Person.formJson(element));

    //  another way to create object  
    //  Person newPerson =  Person.formJson(element);
    //  myList2.add(newPerson);
  }
}

// ------------- Person class ( Model )--------------------------
class Person {
  int? age;
  String? name;
  Person({this.name, this.age});

  factory Person.formJson(Map<dynamic, dynamic> json) {
    return Person(name: json["name"], age: json["age"]);
  }
}

// ------------- List Data ( json ) --------------------------

List data = [
  {
    "name": "Saud",
    "age": 20,
  },
  {
    "name": "Dana",
    "age": 22,
  },
  {
    "name": "Abdulaziz",
    "age": 39,
  },
];
