import 'package:goal_based_savings_fello/app/features/goal_save/domain/entities/investment_details_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'investment_details.g.dart';

@JsonSerializable()
class InvestmentDetails extends InvestmentDetailsEntity {
  String name;
  double savings;
  int level;
  double ticket;

  InvestmentDetails({
    required this.name,
    required this.savings,
    required this.level,
    required this.ticket,
  });

  factory InvestmentDetails.fromJson(Map<String, dynamic> json) =>
      _$InvestmentDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentDetailsToJson(this);
}
