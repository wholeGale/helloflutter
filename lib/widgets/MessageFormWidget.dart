import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2018-12-31 15:05
 * @Description:
 */
class MessageFormWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MessageFormState();
  }

}
class _MessageFormState extends State<MessageFormWidget>{
  var editController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Expanded:占满一行里除 RaisedButton 外的所有空间
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