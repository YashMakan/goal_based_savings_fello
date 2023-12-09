// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      name: json['name'] as String,
      savings: (json['savings'] as num).toDouble(),
      level: json['level'] as int,
      ticket: (json['ticket'] as num).toDouble(),
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'name': instance.name,
      'savings': instance.savings,
      'level': instance.level,
      'ticket': instance.ticket,
    };
