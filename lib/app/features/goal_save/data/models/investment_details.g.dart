// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvestmentDetails _$InvestmentDetailsFromJson(Map<String, dynamic> json) =>
    InvestmentDetails(
      name: json['name'] as String?,
      date: json['date'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      goalType: json['goalType'] as String?,
      investmentType:
          $enumDecodeNullable(_$InvestmentEnumMap, json['investmentType']),
    );

Map<String, dynamic> _$InvestmentDetailsToJson(InvestmentDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'amount': instance.amount,
      'goalType': instance.goalType,
      'investmentType': _$InvestmentEnumMap[instance.investmentType],
    };

const _$InvestmentEnumMap = {
  Investment.felloFlo: 'felloFlo',
  Investment.digitalGold: 'digitalGold',
};
