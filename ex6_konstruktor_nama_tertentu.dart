class Point {
  late int x;
  late int y;

  Point() {
    this.x = 0;
    this.y = 0;
  }

  Point.createObject(int x, int y) {
    this.x = x;
    this.y = y;
  }

  Point.buatObjek(int x, int y, int z) {
    this.x = x;
    this.y = y;
  }

  void setLocation(int xValue, int yValue) {
    this.x = xValue;
    this.y = yValue;
  }
}

void main(List<String> args) {
  Point a, b; //deklarasi objek
  a = Point(); //inisialisasi/instansiasi objek
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
  b = Point.createObject(2, 3);
  print('Titik b terletak di koordinat (${b.x}, ${b.y})');
}
