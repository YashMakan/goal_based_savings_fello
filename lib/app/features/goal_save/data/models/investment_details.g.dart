// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvestmentDetails _$InvestmentDetailsFromJson(Map<String, dynamic> json) =>
    InvestmentDetails(
      name: json['name'] as String,
      savings: (json['savings'] as num).toDouble(),
      level: json['level'] as int,
      ticket: (json['ticket'] as num).toDouble(),
    );

Map<String, dynamic> _$InvestmentDetailsToJson(InvestmentDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'savings': instance.savings,
      'level': instance.level,
      'ticket': instance.ticket,
    };
