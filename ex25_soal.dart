class Person {
  late String name;
  Person({String name = 'no_name'}) {
    print('constructor Person dipanggil');
    this.name = name;
  }
}

class Student extends Person {
  Student({String studentName = 'Student Baru'}) : super(name: studentName) {
    print('constructor Student dipanggil');
  }
}

void main(List<String> args) {
  Person p = Person();
  print(p.name);
  Person s = Student();
  print(s.name);
  Person farhana = Student(studentName: 'Farhana');
  print(farhana.name);
}
