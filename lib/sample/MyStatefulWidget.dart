import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2019-01-03 20:34
 * @Description:
 */
class MyStatefulWidget extends StatefulWidget{

  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() {
    return _MyStatefulWidgetState();
  }

}

class _MyStatefulWidgetState extends State<StatefulWidget>{
  int _count = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('sample code')),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          color: Colors.green,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState((){
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}