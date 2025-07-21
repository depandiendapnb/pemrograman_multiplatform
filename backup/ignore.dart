class Mahasiswa {
  String name;
  Function(String name)? position;
  Mahasiswa(this.name, {this.position});
  void setPosition() {
    position!(name);
  }
}

void andiPosition(String name) {
  print('$name is System Analyst');
}

void main(List<String> args) {
  var andi = Mahasiswa('Andi', position: andiPosition);
  andi.setPosition();
  var budi = Mahasiswa('Budi', position: (String name) {
    print('$name is Full Stack Developer');
  });
  budi.setPosition();
  var clara = Mahasiswa('Clara', position: (_) {
    print('This student is Tester');
  });
  clara.setPosition();
}
