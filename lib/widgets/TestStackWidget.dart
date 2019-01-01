import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2019-01-01 12:05
 * @Description: 叠加布局Stack
 */
class TestStackWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
        child: Center(
          child: Text(
            '十',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
    ),
    ),
    ),
        Container(
        child: Center(
          child: Text(
            '口',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
    ),
    ),
    )
      ],
    );
  }
}