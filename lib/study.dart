void main() {
  String name = "12";
  var s = 124;
  final int age = 25;
  //age=10;
  final time = new DateTime.now();
  print("==========ghg$name $s $time");

  double d = 13.5;
  d = 12;

  if (name == d) {
    print("s==d");
  } else {
    print("s!=d");
  }

  var list = ["11", "21", "31"];
  int length = list.length;
  print("list=$list" + "   length:" + length.toString());
  print("list=" + list[2]);

  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }

  var list2 = new List<String>();
  for (int i = 0; i < 100; i++) {
    list2.add(i.toString());
  }
  print("list2:${list2}");

  /**
   * 第一种 直接写
   */
  var map = {
    "name": "秦始皇",
    "age": 54,
    "desc": ["皇帝", "秦朝"]
  };
  print(" map:" + map.toString());
  print(map["name"]);

  /**
   * 第二种方式
   */
  var map2 = new Map();
  map2["name"] = "汉武帝";
  map2["age"] = 65;
  print(map2);

  /**
   * 判断类型 is
   */
  var test = "hh";
  if (test is String) {
    print("test 类型 是string");
  }
  var a;
  a ??= 10;
  print(a); //输出10

  var b = 1;
  b ??= 10;
  print(b); //输出1

  var gender = "男1";
  switch (gender) {
    case "男":
      print("男性");
      break;
    default:
      print("非男性");
      break;
  }

  var tt;
  tt ??= "yes";
  print(tt);

  String str = "1243";
  print(int.parse(str)); //1243
  print(double.parse(str)); //1243/0

  try {
    print(double.parse(null));
  } catch (err) {
    print("异常");
  }

  String nullStr;
  print(nullStr == null); //true
  nullStr = "";
  print(nullStr.isEmpty); //true  字符串的isEmpty代表对象内容为空

  var sum = 1;
  for (var i = 1; i < 10; i++) {
    sum *= i;
    print(sum);
  }

  var list3 = [
    {"title": "张三"},
    {"title": "李四"},
    {"title": "王五"}
  ];

  for (var a in list3) {
    print(a);
  }

  for (var i = 0; i < list3.length; i++) {
    print(list3[i]["title"]);
  }

  var index = 0;
  while (index <= 10) {
    print("index$index");
    index++;
  }
}
