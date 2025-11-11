import 'dart:ffi';

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Student {
  String name;
  Int age;
  Int score;
  Student(this.name, this.age, this.score);
}
class List_Map{
  void listA(){
    List<int> listA = [1,2 ,3];
    listA.add(2);
    print(listA);
    listA.forEach( (e) {
      print("gia tri thu i la $e");
    });
    // listA.remove(2);
    // print(listA);
    // listA.removeAt(0); // listA.removeLast
    // print(listA);
    listA.insert(listA.first,  0);
    print(listA);
    List<int> listB = [7, 8, 9];
    listA += listB;
    
    // sort list A nguoc
    listA.sort((a, b) => b.compareTo(a));
    print(listA);
    // listA.sort((a, b) =>a.compareTo(b));
    // print(listA);
    // tim kiem trong list
    print(listA.contains(7));
    print(listA.indexOf(1));
    print(listA.first);
    print(listA.last);
    print(listA.isEmpty);
    print(listA.isNotEmpty);
    print(listA.length);
    print(listA.reversed);
    print(listA);
    print(listA.sublist(2, 3));



  }

  void mapB(){
     Map<String, String> account = {
       'name': 'phuong',
       'password': '123456',
       'username': 'phuonght'
     };

     // add a new item
     account['email'] = 'phuonggm204@gmail.com';
     // remove
     account.remove('email');
     //
     account.forEach((key, value) {
       print('key: $key, value: $value');
     });
     for( String x in account.keys) {
        if (x == 'username'){
          print(account[x]);
        }
     }
     print(account);


  }



}


void main(){
  List_Map lm = List_Map();
  // lm.listA();
  lm.mapB();
}