class Character {
  late int _healthPoint;
  int get healthPoint => _healthPoint;
  set healthPoint(int value) {
    //-10
    if (value < 0) {
      value *= -1; // value = value * -1;
    }
    _healthPoint = value;
  }
}
