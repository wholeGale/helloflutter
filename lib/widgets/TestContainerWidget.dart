import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2019-01-01 11:16
 * @Description: 布局
 */
class TestContainerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text('Container text'),
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(15.0),
      width: 180.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }

}
