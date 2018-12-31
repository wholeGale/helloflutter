import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2018-12-31 15:02
 * @Description: 文本
 */
class TestTextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text(
      "put your text here!",
      style: TextStyle(
          color: Colors.blue,
          fontSize: 16,
          fontWeight: FontWeight.bold
      ),
    );
  }
}