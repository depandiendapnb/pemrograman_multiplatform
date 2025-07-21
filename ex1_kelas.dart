class Point {
  late int x;
  late int y;
  Point() {
    print('Konstruktor sedang dipanggil!');
  }
}

void main(List<String> args) {
  Point p = Point();
  p.x = 2;
  p.y = 3;
  print('Titik p terletak di koordinat (${p.x}, ${p.y})');
}
