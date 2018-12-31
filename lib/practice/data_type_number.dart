/**
 * @Author: xiangzhenbiao
 * @Date: 2018-12-29 16:09
 * @Description: 数据类型
 */
void main(){
  //num是数值型的总称
  num a = 10;///先赋值为int
  a = 12.5;///可以再赋值为double型

  int b = 10;
//  b = 3.14;

  double c = 2.5;
//  c = 12;

  print(b + c);
  print(b - c);
  print(b * c);
  print(b / c);//直接除以
  print(b ~/ c);//除后取整
  print(b % c);

  print(b.isEven);//even偶数
  print(b.isOdd);//odd奇数

  int d = 11;
  print(d.isEven);
  print(d.isOdd);

  int e = -100;
  print(e.abs()); //取绝对值

  double f = 10.6;
  print(f.round());//四舍五入,adv. 在周围
  print(f.floor());//不大于,舍去法取整
  print(f.ceil());//不小于,进一法取整

  print(f.toInt());//转为int型
  print(d.toDouble());

  print(getPerson("xiangzhenbiao", 26));
  print(getStudent("K031241524", 'xiangzhenbiao', 26));
}
//返回类型(这里是String)可以省略，参数类型(String,int)也可以省略
getPerson(name, age){
  return "name=$name,age=$age";
}
getStudent(id, name, age) =>"id=$id,name=$name,age=$age";