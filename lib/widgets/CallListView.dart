import 'package:flutter/material.dart';
import 'package:second_flutter_app/widgets/ItemView.dart';
import 'package:second_flutter_app/widgets/TelephoneCall.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2019-01-03 15:25
 * @Description:
 */
class CallListView extends StatelessWidget{
  final List<TelephoneCall> telephoneCalls;
  final OnItemClickListener onItemClickListener;

  CallListView(this.telephoneCalls, this.onItemClickListener);
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: telephoneCalls.length,
        itemBuilder: (context, index){
          return ItemView(index,telephoneCalls[index], onItemClickListener);
        }
    );
  }

}