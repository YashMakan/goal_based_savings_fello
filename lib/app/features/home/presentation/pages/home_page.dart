import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_fello_balance_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_user_info_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/components/balance_section.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/components/current_investment_card.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/components/greetings_section.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/components/home_page_app_bar.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/constants.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/background_widget.dart';
import 'package:goal_based_savings_fello/app/shared/core/inject_dependency/dependencies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    sl<HomeUserInfoBloc>().add(const FetchFelloUserSavedDetailsEvent(Constants.userId));
    sl<HomeFelloBalanceBloc>().add(const FetchFelloBalanceEvent(Constants.userId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      padding: EdgeInsets.zero,
      top: false,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: CustomColors.lightGrey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: const SafeArea(
              child: Column(
                children: [
                  HomePageAppBar(),
                  GreetingsSection(),
                  BalanceSection(),
                  CurrentInvestmentCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
