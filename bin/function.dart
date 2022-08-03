import 'package:test/expect.dart';

void main(List<String> args) {
  String capetilizeName({String? name}) {
    if (name == null) {
      return 'no name has been passed';
    } else {
      return name.toUpperCase();
    }
  }

  print(capetilizeName(name: 'mahmoud'));
  print('************call back function*************');
  //ahmed mahmoud ali => Ahmed M. Ali
  String capetilizeFirstLatter(String name) {
    return name[0].toUpperCase() + name.substring(1);
  }

  String FormatMiddleName(String name) {
    return ' ' + name[0].toUpperCase() + '. ';
  }

  String? FormatfullName(String fullName) {
    List<String> names = fullName.split(' ');
    if (names.length != 3) {
      print('enter three string for name');
      return null;
    } else {
      String firstName = capetilizeFirstLatter(names[0]);
      String secondName = FormatMiddleName(names[1]);
      String lastName = capetilizeFirstLatter(names[2]);
      return firstName + secondName + lastName;
    }
  }

  print(FormatfullName('mahmoud salem marouf'));
  print('***************Two***************');
  /*
  في الطريقة هاي ممكن تصير عندي مشكلة اني معطية دالة 
  بتشتغل شغل ثاني بييجي هين دور اني احدد التركيب تبع الدالة كيف 
  هي بييجي دور حاجة مهمه اسمها 
  typedef
  حنشوف اسصتخدامها هلقيت 
   */

  String? FormatfullName2(xfun fun1, xfun fun2, String fullName) {
    List<String> names = fullName.split(' ');
    if (names.length != 3) {
      print('enter three string for name');
      return null;
    } else {
      String firstName = fun1(names[0]);
      String secondName = fun2(names[1]);
      String lastName = fun1(names[2]);
      return firstName + secondName + lastName;
    }
  }

  print(FormatfullName2(
      capetilizeFirstLatter, FormatMiddleName, 'mahmoud salem marouf'));
}

typedef String xfun(String n);
