import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2019-01-01 12:05
 * @Description: 叠加布局Stack，默认情况下，Stack都按左上角对齐
 * 可以通过设置alignment参数改变对齐方式，Aligment 的取值范围为 [-1, 1]，Stack 中心为 (0, 0)
 */
class TestStackWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      //设置红色背景 redContainerBg
      color: Colors.red,
      child: Stack(
        children: <Widget>[
          Container(
            //设置为 (-0.5, -0.5) 后，可以让文本"新"的x坐标对齐到redContainerBg的宽 1/4 处，y坐标对齐到redContainerBg的高 1/4 处。
            alignment: const Alignment(-0.5, -0.5),
            child: Text(
              '新',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30.0,
              ),
            ),
          ),
          Container(
            //设置为 (0.5, -0.5) 后，可以让文本"年"的x坐标对齐到redContainerBg的宽 3/4 处，y坐标对齐到redContainerBg的高 1/4 处。
            alignment: const Alignment(0.5, -0.5),
            child: Text(
              '年',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30.0,
              ),
            ),
          ),
          Container(
            //设置为 (-0.5, 0.5) 后，可以让文本"快"的x坐标对齐到redContainerBg的宽 1/4 处，y坐标对齐到redContainerBg的高 3/4 处。
            alignment: const Alignment(-0.5, 0.5),
            child: Text(
              '快',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30.0,
              ),
            ),
          ),
          Container(
            //设置为 (0.5, 0.5) 后，可以让文本"乐"的x坐标对齐到redContainerBg的宽 3/4 处，y坐标对齐到redContainerBg的高 3/4 处。
            alignment: const Alignment(0.5, 0.5),
            child: Text(
              '乐',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30.0,
              ),
            ),
          ),

        ],
      ),

    );
  }
}