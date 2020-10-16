void main() {
  Student.show();
  print(Student.staticField);

  Test test;
  //test.show(); //Unhandled exception:NoSuchMethodError: The method 'show' was called on null.

  test?.show();

  Test test2 = new Test();
  test2
    ..show()//输出:hello
    ..show2()//输出:hello2
    ..toString();
}

class Test {
  void show() {
    print("hello");
  }

  void show2() {
    print("hello2");
  }
}

class Student {
  static String staticField = "静态成员2001";

  static void show() {
    print("这是个静态方法");
  }
}
