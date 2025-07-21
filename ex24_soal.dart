void main(List<String> args) {
  Set<int> numberSet = new Set<int>();
  numberSet.add(1);
  numberSet.add(3);
  numberSet.add(5);
  numberSet.add(7);
  numberSet.add(5);

  for (var number in numberSet) {
    print(number);
  }
}
