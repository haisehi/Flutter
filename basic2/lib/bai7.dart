void main(List<String> args) {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  Set c = {};
  for (var i in a) {
    if (i % 2 == 0) {
      c.add(i);
    }
  }
  print(c.toString());
}
