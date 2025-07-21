class Point {
  late int _x;
  late int _y;

  Point() {
    this._x = 0;
    this._y = 0;
  }

  Point.createInstance(int x, int y) {
    this._x = x;
    this._y = y;
  }

  void setLocation(int xValue, int yValue) {
    this._x = xValue;
    this._y = yValue;
  }

  set x(int value) {
    _x = value;
  }

  set y(int value) {
    _y = value;
  }

  int get x {
    return _x;
  }

  int get y {
    return _y;
  }

  Point clone() {
    return Point.createInstance(this._x, this._y);
  }
}
