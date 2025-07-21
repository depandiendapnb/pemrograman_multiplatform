void main(List<String> args) {
  var fungsiLambda = () {
    print('Demo fungsi tanpa nama (anonymous function)');
  };
  var x = fungsiLambda();
  print(x);
  /*var add = (double a, double b) {
    return a + b;
  };*/
  var add = (double a, double b) => a + b;
  var result = add(34, 18);
  print('Nilai variabel result: $result');
}
