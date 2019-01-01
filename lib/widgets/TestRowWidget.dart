import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2019-01-01 11:31
 * @Description: 水平布局widget: Row
 */
class TestRowWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      // 只有一个子元素的 widget，一般使用 child 参数来设置；
      // Row 可以包含多个子控件，对应的则是 children。
      children: <Widget>[
        Container(
        child: Center(
          child: Text(
              '新',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
          ),
        ),
          padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
          ),
      ),
        Container(
        child: Center(
          child: Text(
              '年',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
          ),
        ),
          padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
          ),
      ),
        Container(
        child: Center(
          child: Text(
              '快',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
          ),
        ),
          padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
          ),
      ),Container(
        child: Center(
          child: Text(
              '乐',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
          ),
        ),
          padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
          ),
      ),

      ],
    );
  }
}