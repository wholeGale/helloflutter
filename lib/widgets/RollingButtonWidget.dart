import 'dart:math';
import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2018-12-31 14:57
 * @Description:
 *
 */
class RollingButtonWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RollingState();
  }
}
class _RollingState extends State<RollingButtonWidget>{
  final _random = Random();


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Roll'),
      onPressed: _onPressed,
    );
  }

  List<int> _roll(){
    final roll1 = _random.nextInt(6) + 1;
    final roll2 = _random.nextInt(6) + 1;

    return [roll1,roll2];
  }

  void _onPressed(){
    debugPrint('xzb->_onPressed()');
    final rollResults = _roll();

    showDialog(
        context: context,
        builder: (_){
          return AlertDialog(
            content: Text('roll result:(${rollResults[0]}, ${rollResults[1]})'),
          );
        }
    );
  }
}