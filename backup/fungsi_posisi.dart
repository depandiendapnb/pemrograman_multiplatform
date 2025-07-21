main(List<String> args) {
  printString("3", 3, false);
}

void printString(String s, [int n = 0, bool x = false]) {
  print("$s $n $x");
}
