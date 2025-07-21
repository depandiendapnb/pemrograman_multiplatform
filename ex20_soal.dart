class Person {
  late String name;
  late int age;
  late bool married;
  late int number_of_children;

  Person(String name, int age,
      [bool married = false, int number_of_children = 0]) {
    this.name = name;
    this.age = age;
    if (married) {
      this.married = true;
      this.number_of_children = number_of_children;
    } else {
      this.married = false;
      this.number_of_children = 0;
    }
  }

  void printBiodata() {
    if (!married) {
      number_of_children = 0;
    }
    print(
        'Nama: $name, umur : $age, sudah menikah : $married, jumlah anak : $number_of_children');
  }
}

void main(List<String> args) {
  Person david = new Person('David', 24, false, 2);
  david.printBiodata();
}
