import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '第2个flutter app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter rolling demo'),
        ),
        body: Center(
//          child: RollingButton(),
//          child: TestText(),
//          child: TestImage(),
//          child: TestButton(),
          child: MessageForm(),
        ),
      ),
    );
  }

}

class RollingButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RollingState();
  }
}
class _RollingState extends State<RollingButton>{
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

    return [roll1,roll1];
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

class TestText extends StatelessWidget{
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

class TestImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://upload-images.jianshu.io/upload_images/206618-e5b0d3759b8124d8.jpg",
      width: 200,
      height: 200
    );
  }
}
class TestButton extends StatelessWidget{
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

class MessageForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MessageFormState();
  }

}
class _MessageFormState extends State<MessageForm>{
  var editController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          //TextField 文本输入框
          child: TextField(
            controller: editController,
          ),
        ),
        RaisedButton(
          child: Text('click commit'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (_){
                  return AlertDialog(
                    content: Text(editController.text),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('取消'),
                        onPressed: () => Navigator.pop(context),
                      ),
                      FlatButton(
                        child: Text('确定'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  );
                }
            );
          },
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    editController.dispose();

  }
}

