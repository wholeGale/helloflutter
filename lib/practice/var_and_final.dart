/**
 * @Author: xiangzhenbiao
 * @Date: 2018-12-29 15:57
 * @Description:
 */
void main(){
  var a ;
  print(a);

  a = 10;
  print(a);

  a = 'hello world';
  print(a);

  var b = 3.14;
  print(b);

  /// 使用final表示运行时常量
  final c = 1;
//  c = 2;
  print(c);

  ///使用const表示编译器常量
  const d = 20;
//  d = 50;
}