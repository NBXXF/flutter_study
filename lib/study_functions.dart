void main() {
  test();
  print(printUserInfo("张三", 25));//name:张三 age:25
  print(printUserInfo2("张三"));//name:张三
  print(printUserInfo3("李四"));//name:李四 age:88
  print(printUserInfo4("王五",age: 21,desc: "我是一个美女"));
  //print(printUserInfo5(printUserInfo("张三", 25)));//name:王五 age:21 我是一个美女


  /**
   * 箭头函数
   */
  var list=[1,2,4,6];
  var list2 = list.map((e) => e*2).toList();
  print(list2);//[2, 4, 8, 12]


  /**
   * 匿名函数
   */
  var noNameFun=(){
    return "hello";
  };
  print(noNameFun());


  /**
   * 自执行方法
   */
  (){ print("这是一个自执行方法");}();//输出 这是一个自执行方法
}

String printUserInfo(String name, int age) {
  return "name:$name age:$age";
}

/**
 * 可选参数语法  [类型 形参名字]
 */
String printUserInfo2(String name, [int age]) {
  if (age != null) {
    return "name:$name age:$age";
  }
  return "name:$name";
}

/**
 * 默认参数  [类型 形参名字=默认值]
 */
String printUserInfo3(String name, [int age=88]) {
  return "name:$name age:$age";
}


/**
 * 命名参数 调用式 参数必须强制写且一样
 */
String printUserInfo4(String name, {int age,String desc}) {
  return "name:$name age:$age $desc";
}


/**
 * 把方法当做参数
 */
String printUserInfo5(fn) {
  return fn();
}
void test() {
  int innerFunction() {
    return 1;
  }

  print(innerFunction()); //输出1
}
