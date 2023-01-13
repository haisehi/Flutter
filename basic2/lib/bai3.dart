void main() {
  //danh sách integer
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  //vòng for chạy từng phần tử
  for (var i in a) {
    if (i < 5) {
      print(i);
    }
  }

  // viết ngắn gọn 1 dòng
  print([
    for (var i in a)
      if (i < 5) i
  ]);
}
