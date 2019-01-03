import 'package:second_flutter_app/widgets/CallType.dart';

/**
 * @Author: xiangzhenbiao
 * @Date: 2019-01-03 14:49
 * @Description: 通话实体
 */
class TelephoneCall {
  final CallType callType;//通话类型
  final String name;//联系人姓名
  final String attribution;//归属地
  final String callTime;//通话时间

  TelephoneCall(
      this.callType,
      this.name,
      this.attribution,
      this.callTime
      );
}