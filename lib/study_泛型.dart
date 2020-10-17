import 'dart:math';

void main() {
  int data = getData<int>(10);
  print(data);
  String s = getData<String>("hello");
  print(s);

  List list = new List();
  list.add("1");
  list.add(2);
  print(list);

  /**
   * 元素只能是指定类型
   * new List<int>();则代表元素只能是int
   */
  List list2 = new List<int>();
  list2.add(1);
  list2.add(2);
  print(list2);

  new Action<String>("hello");
  new Action<int>(20);
}

T getData<T>(T value) {
  return value;
}

/**
 * 泛型类
 */
class Action<T> {
  T t;

  Action(this.t);
}

/**
 * 泛型接口
 */
abstract class Consumer<T> {
  void accept(T t);
}

class StringConsumer extends Consumer<String> {
  @override
  void accept(String t) {
    // TODO: implement accept
  }
}

class IntConsumer extends Consumer<int> {
  @override
  void accept(int t) {
    // TODO: implement accept
  }
}
