import 'inheritance.dart';

class Person {
  late String _name;
  late int _age;
  late String? _address;
  static int num_person = 0;
  Person(String name, int age) {
    this._name = name;
    this._age = age;
    num_person++;
  }
  Person.createInstance(String name, int age, String address) {
    this._name = name;
    this._age = age;
    this._address = address;
    num_person++;
  }
  static int totalPerson() => num_person;
  set name(String new_name) => _name = new_name;
  set age(int new_age) => _age = new_age;
  String get name => _name;
  int get age => _age;
  void cetak() {
    print('$_name : $_age');
  }
}

class Mahasiswa extends Person {
  late int _nim;
  Mahasiswa(String name, int age, int nim) : super(name, age) {
    this._nim = nim;
  }
  @override
  void cetak() {
    print('Nim : $_nim');
    print('Nama : $name');
    print('Umur : $age');
  }
}

void main(List<String> args) {
  Mahasiswa budi = Mahasiswa("Depandi Enda", 21, 1106315);
  budi.cetak();
}
