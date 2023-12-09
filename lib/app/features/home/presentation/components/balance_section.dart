import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_fello_balance_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/constants.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/extensions.dart';
import 'package:goal_based_savings_fello/app/shared/config/routes/routes.dart';
import 'package:goal_based_savings_fello/app/shared/config/theme/text_theme.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/custom_button.dart';
import 'package:goal_based_savings_fello/app/shared/core/inject_dependency/dependencies.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BalanceSection extends StatefulWidget {
  const BalanceSection({super.key});

  @override
  State<BalanceSection> createState() => _BalanceSectionState();
}

class _BalanceSectionState extends State<BalanceSection> {
  final homeFelloBalanceBloc = sl<HomeFelloBalanceBloc>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fello Balance',
              style: context.titleLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
            BlocBuilder(
              bloc: homeFelloBalanceBloc,
              builder: (context, state) {
                if(state is HomeFelloBalanceLoadedState) {
                  return Text('${Constants.currencySymbol}0.0',
                    style:
                        context.titleLarge?.copyWith(fontWeight: FontWeight.w800));
                } else {
                  return Container(
                    width: 20.w,
                    height: 20,
                    margin: const EdgeInsets.only(top: 8),
                    color: Colors.grey.withOpacity(0.3),
                  ).toShimmer(true);
                }
              }
            ),
          ],
        ),
        CustomButton(
            text: 'ADD MONEY',
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.goalSavePage);
            })
      ],
    );
  }
}
