void main() {
  Person t = new Teacher();
  t.say();

  Person s = new Student();
  s.say();

  Worker worker = new Worker();
  worker.say();
}

abstract class Person {
  /**
   * 如果子类是用implements方式 那么子类需要主动声明一遍遍
   */
  String name;

  void say();
}

class Worker implements Person {
  @override
  void say() {
    print("我是工人");
  }

  @override
  String name;
}

class Teacher extends Person {
  @override
  void say() {
    print("我是老师");
  }
}

class Student extends Person {
  @override
  void say() {
    print("我是学生");
  }
}
