import 'package:flutter/material.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2018-12-31 15:03
 * @Description: 图片
 */
class TestImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://upload-images.jianshu.io/upload_images/206618-e5b0d3759b8124d8.jpg",
        width: 200,
        height: 200
    );
  }
}