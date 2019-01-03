import 'package:flutter/material.dart';
import 'package:second_flutter_app/widgets/CallType.dart';
import 'package:second_flutter_app/widgets/TelephoneCall.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2019-01-03 14:46
 * @Description: listView每个item
 */
typedef OnItemClickListener = void Function(int position);

class ItemView extends StatelessWidget{
  final int position;
  final TelephoneCall telephoneCall;
  final OnItemClickListener onItemClickListener;

  ItemView(this.position, this.telephoneCall, this.onItemClickListener);

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    switch(telephoneCall.callType){
      case CallType.call_missed:
        iconData = Icons.call_missed;
        break;
      case CallType.call_received:
        iconData = Icons.call_received;
        break;
      default:
        iconData = Icons.call;
        break;
    }
    final icon = Icon(
        iconData,
        color: Colors.blue[500]);

    final itemWidget = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(16.0),
          child: icon,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  telephoneCall.name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                telephoneCall.attribution
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: Text(telephoneCall.callTime),
        ),
        Container(
            margin: EdgeInsets.all(5.0),
            child: Icon(
              Icons.info,
              color: Colors.grey[500],
            )
        )
      ],
    );
    return InkWell(
      onTap: ()=> onItemClickListener(position),
      child: itemWidget,
    );
  }
}