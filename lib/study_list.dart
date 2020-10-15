void main()
{


  /**
   * list常见属性
   * length  长度
   * reversed 反转,可以使用list.reversed.toList() 获取反转的List
   * isEmpty  是否为空
   * isNotEmpty  是否不为空
   *
   * 常见方法
   * add 添加
   * addAll 拼接数组
   * remove 移除
   * removeAt 移除 参数:索引值
   * fillRange 修改
   * insert 插入
   * insertAll 批量插入
   * toList 其他类型转换为list
   * join list转换成字符串
   * split 字符串转换成list
   */
  var list=[1,4,6];
  list.add(7);
  print(list);

  print(list.reversed);

  /**
   *获取反转的list
   */
  var reversedList = list.reversed.toList();
  print(reversedList);//[7, 6, 4, 1]

  print(list.indexOf(8));//-1
  print(list.indexOf(4));//1

  list.fillRange(1,3, 9);//将index=1和index=2的值替换为9 [1, 4, 6, 7]=>[1, 9, 9, 7]
  print(list);//[1, 9, 9, 7]


  Set set=new Set();
  set.add("苹果");
  set.add("苹果");
  set.add("三星");
  print(set);
}