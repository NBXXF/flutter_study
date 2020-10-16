void main() {
  C c = new C();
  c.say(); //输出:hello B

  c.descA();//输出A
  c.descB();//输出B
}

class A {
  void say() {
    print("hello A");
  }

  void descA() {
    print("A");
  }
}

class B {
  void say() {
    print("hello B");
  }

  void descB() {
    print("B");
  }
}

/**
 * with 语法 可以实现继承多个类,但是目标类都包含同一个方法或者属性,那么 会去最后一个继承类的属性和方法
 */
class C with A, B {}
