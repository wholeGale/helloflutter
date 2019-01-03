import 'dart:math';

import 'package:flutter/material.dart';
import 'package:second_flutter_app/widgets/MessageFormWidget.dart';
import 'package:second_flutter_app/widgets/RollingButtonWidget.dart';
import 'package:second_flutter_app/widgets/TestButtonWidget.dart';
import 'package:second_flutter_app/widgets/TestColumnWidget.dart';
import 'package:second_flutter_app/widgets/TestContainerWidget.dart';
import 'package:second_flutter_app/widgets/TestImageWidget.dart';
import 'package:second_flutter_app/widgets/TestRowWidget.dart';
import 'package:second_flutter_app/widgets/TestStackWidget.dart';
import 'package:second_flutter_app/widgets/TestTextWidget.dart';
import 'package:second_flutter_app/widgets/TitleSection.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final titleSection = TitleSection(
        'Oeschinen Lake Campground', 'Kandersteg, Switzerland', 41);
    final buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(context, Icons.call, 'CALL'),
          _buildButtonColumn(context, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(context, Icons.share, 'SHARE')
        ],
      ),
    );
    final textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
          ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter UI basic 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top lakes'),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/girls.jpg',
              width: 600.0,
              height: 240.0,
              //cover类似于Android中的centerCrop，https://docs.flutter.io/flutter/painting/BoxFit-class.html
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        )
      ),
    );
  }

}

Widget _buildButtonColumn(BuildContext context, IconData icon, String label){
  final color = Theme.of(context).primaryColor;

  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,

    children: <Widget>[
      Icon(icon,color: color),
      Container(
        margin: EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color
          ),
        ),
      )
    ],
  );
}


