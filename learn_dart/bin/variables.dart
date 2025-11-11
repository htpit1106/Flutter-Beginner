void main(List<String> arguments) {
  String? name;
  // print(name.length)
  // print(name?.length);
  print(name ?? "curse");
  name ??= "curse";
  print(name!.length);
  if (name != null) {
    print(name.length);
  }
  String description;
  description = 'heeeee';
  print(description);
  final String age;
  const String ages = '13';
  age = '14';
  final color;
  color = 'red';
  print(color);
  var foo = const [];
  final bar = const [];
  const baz = []; // Equivalent to `const []`

  for (var _ in [1, 2, 3]) {
    print("Looping >>..<<");
  }

}
late String y;


class A {
  late String description;
  void x(){
    description = 'a';
    String x;
    print(x='a');
  }
}
/*
  toan tu operator: ~/, %, /
  toan tu logic: && , || , is, ==, !=, >, <, >=, <=
  is, is!, as
  as: ep kieu - loi neu ep sai kieu
  is, is! -> true | false

  .. và ..? cho pheps goi nhiều thuộc tính trên cùng 1 đối tượng

      Cascade khong hoạt dong tren gia  tri void
            var paint = Paint()
            ..color = Colors.black
            ..strokeCap = StrokeCap.round
            ..strokeWidth = 5.0;

 */

/*

  - variables
  String name  // non-nullable
  String? name // nullable

  sound safety variable
  // name?. : in ra null neu name == null
  // if (name == nul) print("name bi null")
  // name!. : khi chac chan name != nul || bao loi compile
  // name ?? 'Date' : gia tri default khi name = null
  // name ??= 'Phuong': khi name = null thi gan gia tri Phuong


  // bien String name
  // phai khoi tao gia tri ngay dau
  // tru khi khai bao trong func

  // bien late
  // khong can khoi tao gia tri ngay dau tien trong moi truong hop

  final || const
  final - runtime initial
  const - compile - time

  final object || const object

  - final object: khong doi tham chieu - co doi noi dung
  - const object: khong doi tham chieu - khong doi noi dung


  // Wildcard variable - _
  - khai bao va nhan gia tri nhung khong dung den
  var _ = 1
  var _ = 2

  for (var _ in [1, 2, 3]) {
    print('Looping ...')
  }


 */