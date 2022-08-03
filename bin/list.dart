void main(List<String> args) {
  String users = '';
  List<String> userList = ['saeed', 'hesham', 'raed'];
  userList.forEach((element) {
    users += element;
    if (element != userList.last) {
      users += '/';
    }
  });
  print(users);
  print('******************toUpperCase*****************');

  ///to uppercase
  List userListupper = userList.map((element) {
    return element.toUpperCase();
  }).toList();
  print(userListupper);
  print('***********************************');
  List<String> student = ['ahmed', 'mahmoud', "omer", 'ali'];
  List<String> studentlen = [];
  if (student.isEmpty) {
    print('no process is applied');
  } else {
    studentlen = student.map((e) {
      if (e.length >= 4) {
        return e[0].toUpperCase() + e.substring(1);
      } else {
        return e;
      }
    }).toList();

    print(studentlen);
  }
}
