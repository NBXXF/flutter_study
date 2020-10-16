import 'package:flutter_xxf/test/Student.dart';

import "test/Student.dart";

void main() {
  Person p = new Person("张三", 24);
  p.say();

  Person p2 = new Person.now("李四");
  p2.age = 26;
  p2.say();
  Student student = new Student("王五", 23);
  // print(student._age);//编译不过 Try correcting the name to the name of an existing getter, or defining a getter or field named '_age'.
  print(student.age); //通过get方法可以获取对应属性//输出 23
  student.age = 13; //是通过set方法赋值
  print(student); //输出:Student{name: 王五, _age: 13}

  print(new Child("child name", 19));
}

class Parent{
  String name;
  Parent(this.name);
}
class Child extends Parent{
  int age;
  Child(String name,int age) : super(name){
    this.age=age;
  }

  @override
  String toString() {
    return 'Child{age: $age} ${this.age}';
  }
}

class Person {
  String name;

  /**
   * 默认构造函数,简写模式: Person(this.name, this.age);
   */
  Person(this.name, this.age) {
    this.name = name;
    this.age = age;
  }

  /**
   * 命名构造函数,简写模式 Person.now(this.name);
   */
  Person.now(this.name) {
    this.name = name;
  }

  int age;

  void say() {
    print("我是${this.name} 今年${this.age}岁");
  }
}
