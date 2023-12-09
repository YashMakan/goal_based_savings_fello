import 'package:goal_based_savings_fello/app/features/home/domain/entities/user_info_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo extends UserInfoEntity {
  String name;
  double savings;
  int level;
  double ticket;

  UserInfo({
    required this.name,
    required this.savings,
    required this.level,
    required this.ticket,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
