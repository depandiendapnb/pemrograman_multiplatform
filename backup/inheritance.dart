class Person {}

mixin DisplayInfo on Person {
  void cetak() {
    print("Hi, I'am a Human");
  }
}

class Mahasiswa extends Person with DisplayInfo {
  @override
  void cetak() {
    print("Hi, I'am a Student");
  }
}

class Dosen extends Person {
  void info() {
    print("Hi, saya tidak mengimplementasikan metode cetak()");
  }
}

void main(List<String> args) {
  Mahasiswa abdul = Mahasiswa();
  abdul.cetak();
  Dosen budi = Dosen();
  budi.info();
}
