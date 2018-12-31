import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2018-12-31 15:04
 * @Description: Flutter 提供了两个基本的按钮控件：FlatButton 和 RaisedButton
 */
class TestButtonWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var flatBtn = FlatButton(
      onPressed: ()=> debugPrint('flatbutton pressed'),
      child: Text('FlatButton'),
    );
    var raisedButton = RaisedButton(
      onPressed: ()=> debugPrint('raisedbutton pressed'),
      child: Text('RaisedButton'),

    );
    return raisedButton;
  }
}