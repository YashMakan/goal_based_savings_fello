import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_user_info_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/shared/config/assets/image.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/constants.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/extensions.dart';
import 'package:goal_based_savings_fello/app/shared/config/routes/routes.dart';
import 'package:goal_based_savings_fello/app/shared/config/theme/text_theme.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/custom_button.dart';
import 'package:goal_based_savings_fello/app/shared/core/inject_dependency/dependencies.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CurrentInvestmentCard extends StatefulWidget {
  const CurrentInvestmentCard({super.key});

  @override
  State<CurrentInvestmentCard> createState() => _CurrentInvestmentCardState();
}

class _CurrentInvestmentCardState extends State<CurrentInvestmentCard> {
  final bloc = sl<HomeUserInfoBloc>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          color: CustomColors.darkGreen,
          borderRadius: BorderRadius.circular(8)),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -10,
            top: -30,
            child: Lottie.asset(AppImages.pigAnimation, width: 20.w),
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You\'ve Saved',
                            style: context.bodyMedium
                                ?.copyWith(color: Colors.white54)),
                        BlocBuilder(
                          bloc: bloc,
                          builder: (context, state) {
                            if(state is HomeUserInfoLoadedState) {
                              return Text(
                              '${Constants.currencySymbol}230.0',
                              style: context.displaySmall?.copyWith(
                                  fontWeight: FontWeight.w600, color: Colors.white),
                            );
                            }
                            else {
                              return Container(
                                width: 30.w,
                                height: 30,
                                margin: const EdgeInsets.only(top: 8),
                                color: Colors.grey.withOpacity(0.3),
                              ).toShimmer(true);
                            }
                          }
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        color: const Color(0xFF155B60),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text('SAFE & SECURE'),
                  ),
                  CustomButton(
                    text: "KNOW MORE",
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.goalSavePage);
                    },
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
