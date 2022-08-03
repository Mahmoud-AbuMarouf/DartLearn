void main(List<String> args) {
  Map<String, dynamic> StudentDetails = {
    'name': 'omer',
    'subjects': ['arabic', 'english', 'math'],
    'marks': {'arabic': 99, 'english': 98, 'math': 98},
  };
  List<String> subjects = StudentDetails['subjects'];
  subjects.forEach((element) {
    print(element);
  });
  StudentDetails.forEach((key, value) {
    if (key == 'subjects') {
      print(value);
    }
  });
}
