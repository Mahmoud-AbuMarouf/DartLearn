import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  String name = '''hdjmj,kkkdhbghfm
  lkjkkjksld;fdmnf''';
  print("my name is $name");
  print('***********List***********');
  List<String> maleStudent = ['omer', 'hassan', 'salem'];
  List<String> femaleStudent = ['sara', 'hanan', 'nour'];
  List<String> allStudent = [...maleStudent, ...femaleStudent];
  allStudent.add('mahmoud');
  allStudent.addAll(['Ali', 'Emad']);
  allStudent.insert(2, 'jehad');
  print(allStudent);
  print('**********************');
  int sum(int x, int y) {
    return x + y;
  }
}
