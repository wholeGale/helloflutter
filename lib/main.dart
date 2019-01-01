import 'dart:math';

import 'package:flutter/material.dart';
import 'package:second_flutter_app/widgets/MessageFormWidget.dart';
import 'package:second_flutter_app/widgets/RollingButtonWidget.dart';
import 'package:second_flutter_app/widgets/TestButtonWidget.dart';
import 'package:second_flutter_app/widgets/TestContainerWidget.dart';
import 'package:second_flutter_app/widgets/TestImageWidget.dart';
import 'package:second_flutter_app/widgets/TestTextWidget.dart';

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
//          child: RollingButtonWidget(),
//          child: TestTextWidget(),
//          child: TestImageWidget(),
//          child: TestButtonWidget(),
//          child: MessageFormWidget(),
          child: TestContainerWidget(),
        ),
      ),
    );
  }

}


