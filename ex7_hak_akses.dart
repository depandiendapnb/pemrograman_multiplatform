import 'point.dart';

void main(List<String> args) {
  Point a, b, c; //deklarasi objek a, b, c
  a = Point(); //instansiasi objek a
  a.x = 4; //x = 4
  a.y = 5; //y = 5
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
  b = Point.createInstance(2, 3);
  print('Titik b terletak di koordinat (${b.x}, ${b.y})');
  c = b.clone();
  print('Titik c terletak di koordinat (${c.x}, ${c.y})');
}
