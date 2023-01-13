void main() {
  //danh sách thứ nhất
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  //danh sách thứ 2
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  // khai báo danh sách chứa các phần tử chung
  Set<int> c = {};

  // chạy 2 vòng for duyệt các phần từ list 1 và 2
  for (var i in a) {
    for (var j in b) {
      // nếu phần tử thuộc list 1 trùng với list 2 thì thêm vào danh sách C
      if (i == j) {
        c.add(i);
      }
    }
  }
  // xuất danh sách c
  print(c.toList());

  // toán tử sử dụng 1 hàng
  print(Set.from(a).intersection(Set.from(b)).toList());
}
