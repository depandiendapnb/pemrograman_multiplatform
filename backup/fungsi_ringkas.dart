double div(double a, double b) {
  return a / b;
}

double div_ringkas(double a, double b) => a / b;

int div_int(int a, int b) {
  return (a ~/ b);
}

cetakHello() {
  print("Hello");
}

void main(List<String> args) {
  double result = div(8, 5);
  print(result);
  print(div_int(42, 4));
}
