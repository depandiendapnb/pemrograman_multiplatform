class Point {
  late int x;
  late int y;

  Point(xValue, yValue) {
    this.x = xValue;
    this.y = yValue;
  }

  void setLocation(int xValue, int yValue) {
    this.x = xValue;
    this.y = yValue;
  }
}

void main(List<String> args) {
  Point a; //deklarasi objek
  a = Point(2, 3); //inisialisasi objek
  print('Sebelum diubah:');
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
  a.setLocation(4, 5);
  print('\nSetelah diubah:');
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
