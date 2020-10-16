class Student {
  String name;
  int _age; //私有属性 用_下划线语法标识

  Student(this.name, this._age);

  /**
   *   私有属性的getter方法
   *   简写模式:int get age => _age;
   *   一般编译器插件生成都是这个简写模式
   */

  int get age {
    return this._age;
  }

  /**
   * 私有属性的setter方法
   */
  set age(int value) {
    this._age = value;
  }

  @override
  String toString() {
    return 'Student{name: $name, _age: $_age}';
  }
}
