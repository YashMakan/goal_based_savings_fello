import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_user_info_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/extensions.dart';
import 'package:goal_based_savings_fello/app/shared/config/theme/text_theme.dart';
import 'package:goal_based_savings_fello/app/shared/core/inject_dependency/dependencies.dart';

class GreetingsSection extends StatefulWidget {
  const GreetingsSection({super.key});

  @override
  State<GreetingsSection> createState() => _GreetingsSectionState();
}

class _GreetingsSectionState extends State<GreetingsSection> {
  final homeUserInfo = sl<HomeUserInfoBloc>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder(bloc: homeUserInfo, builder: (context, state) {
            if(state is HomeUserInfoLoadedState) {
             return Text(
               'Hi ${state.userInfo.name}',
               style: context.titleLarge?.copyWith(fontWeight: FontWeight.w600),
             );
            } else {
              return Container(
                width: 60,
                height: 10,
                margin: const EdgeInsets.only(bottom: 8),
                color: Colors.grey.withOpacity(0.3),
              ).toShimmer(true);
            }
          }),
          Text(
            'Welcome to Fello',
            style: context.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
