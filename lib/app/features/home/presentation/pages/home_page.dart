import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:goal_based_savings_fello/app/features/goal_save/presentation/bloc/goal_save_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_fello_balance_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_goals_bloc/bloc.dart';

// import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_goals_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_user_info_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/components/balance_section.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/components/current_investment_card.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/components/greetings_section.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/components/home_page_app_bar.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/constants.dart';
import 'package:goal_based_savings_fello/app/shared/config/theme/text_theme.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/background_widget.dart';
import 'package:goal_based_savings_fello/app/shared/core/inject_dependency/dependencies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final goalListingBloc = sl<HomeGoalsBloc>();

  @override
  void initState() {
    sl<HomeUserInfoBloc>()
        .add(const FetchFelloUserSavedDetailsEvent(Constants.userId));
    sl<HomeFelloBalanceBloc>()
        .add(const FetchFelloBalanceEvent(Constants.userId));
    sl<HomeGoalsBloc>().add(const FetchGoalsEvent(Constants.userId));
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
          // todo: this widget I am adding in last so pardon the UI
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Ongoing goals',
                style: context.titleLarge,
              ),
            ),
          ),
          Expanded(
              child: BlocBuilder(
                  bloc: goalListingBloc,
                  builder: (context, state) {
                    if (state is HomeGoalsLoadedState) {
                      if (state.detailsList.isEmpty)
                        return const Center(
                          child: Text('NO DATA FOUND'),
                        );
                      return ListView.builder(
                        itemCount: state.detailsList.length,
                        itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: ListTile(
                            textColor: Colors.black,
                            title: Text("Goal Name: ${state.detailsList[index].name ?? "--"}"),
                            subtitle:
                                Text("Amount: ${state.detailsList[index].amount.toString()}"),
                          ),
                        ),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }))
        ],
      ),
    );
  }
}
