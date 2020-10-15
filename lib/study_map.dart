void main() {
  /**

   */
  var map = new Map();
  map["name"] = "张三";

  /**
   * Json 对象式写法
   */
  var map2 = {"id": 1, "name": "张三", "age": 27};
  print(map2); //{id: 1, name: 张三, age: 27}
  print(map2.keys.toList()); //[id, name, age]
  print(map2.values.toList()); //[1, 张三, 27]

  print(map2.isEmpty); //false
  print(map2.isNotEmpty); //true
  print(map2.length); //3

  map2.addAll({"sex": "男"});
  print(map2); //{id: 1, name: 张三, age: 27, sex: 男}

  /**
   * 遍历
   */
  map2.forEach((key, value) {
    print(key + ":" + value.toString());
  });

  /**
   * list查找wehre语法
   */
  var s = [1, 2];
  print(s
      .where((element) => element >= 2)
      .toList()); //[2] 注意s.where((element) 返回的是迭代器对象
}

