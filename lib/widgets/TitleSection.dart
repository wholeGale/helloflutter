import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2019-01-02 21:18
 * @Description:
 */
class TitleSection extends StatelessWidget{

  final String title;
  final String subTitle;
  final int starCount;
  TitleSection(this.title, this.subTitle, this.starCount);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(32.0),
      child: Row(
        children: <Widget>[
          Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
              subTitle,
              style: TextStyle(
                color: Colors.grey[500],
              )
          )
        ],
      ),
      ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text(starCount.toString())
        ],
      ),
    );
  }

}
