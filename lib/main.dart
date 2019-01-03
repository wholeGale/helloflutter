import 'dart:math';

import 'package:flutter/material.dart';
import 'package:second_flutter_app/widgets/CallListView.dart';
import 'package:second_flutter_app/widgets/CallType.dart';
import 'package:second_flutter_app/widgets/MessageFormWidget.dart';
import 'package:second_flutter_app/widgets/RollingButtonWidget.dart';
import 'package:second_flutter_app/widgets/TelephoneCall.dart';
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
    final telephoneCalls = [
      TelephoneCall(CallType.call,'向彪', '湖北恩施', '2019/01/02'),
      TelephoneCall(CallType.call_missed,'罗浩', '浙江杭州', '昨天'),
      TelephoneCall(CallType.call_received,'zhangxiaozong', '江苏苏州', '2019/01/02'),
      TelephoneCall(CallType.call_received,'汪志勇', '广东深圳', '11:22'),
      TelephoneCall(CallType.call_missed,'耿凯', '上海', '2019/01/01'),
      TelephoneCall(CallType.call_received,'童晨曦', '湖北荆州', '2019/01/02'),
      TelephoneCall(CallType.call_missed,'xuping', '广东广州', '2019/01/03'),
      TelephoneCall(CallType.call_received,'shaomei', '湖北武汉', '2019/01/01'),
      TelephoneCall(CallType.call_received,'张三1', '湖北宜昌', '2019/01/02'),
      TelephoneCall(CallType.call_received,'张三2', '湖北宜昌', '2019/01/02'),
      TelephoneCall(CallType.call_received,'张三3', '湖北宜昌', '2019/01/02'),
      TelephoneCall(CallType.call_received,'张三4', '湖北宜昌', '2019/01/02'),
      TelephoneCall(CallType.call_received,'张三5', '湖北宜昌', '2019/01/02'),
      TelephoneCall(CallType.call_received,'张三6', '湖北宜昌', '2019/01/02'),
      TelephoneCall(CallType.call_received,'张三7', '湖北宜昌', '2019/01/02'),
      TelephoneCall(CallType.call_received,'张三8', '湖北宜昌', '2019/01/02'),
      TelephoneCall(CallType.call_received,'张三9', '湖北宜昌', '2019/01/02')
    ];

    return MaterialApp(
      title: 'ListView demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('最近通话'),
        ),
        body: CallListView(telephoneCalls,(index) => debugPrint('item $index clicked')),
      ),
    );
  }

}



