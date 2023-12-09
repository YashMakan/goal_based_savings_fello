import 'package:goal_based_savings_fello/app/features/goal_save/domain/entities/investment_details_entity.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'investment_details.g.dart';

@JsonSerializable()
class InvestmentDetails extends InvestmentDetailsEntity {
  String name;
  String date;
  double amount;
  String goalType;
  Investment investmentType;

  InvestmentDetails({
    required this.name,
    required this.date,
    required this.amount,
    required this.goalType,
    required this.investmentType,
  });

  factory InvestmentDetails.fromJson(Map<String, dynamic> json) =>
      _$InvestmentDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentDetailsToJson(this);
}
