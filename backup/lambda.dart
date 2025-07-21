add(int a, int b) {
  return a + b;
}

main(List<String> args) {
  int result = add(2, 3);
  print(result);
  /*var output = (int a, int b) {
    return a + b;
  };*/
  //var output = (int a, int b) => a + b;
  //print(output(3, 5));
  var ok = () => print("OK");
  ok();
}
