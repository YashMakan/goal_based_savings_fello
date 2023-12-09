import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app/shared/config/constants/colors.dart';
import 'app/shared/config/constants/constants.dart';
import 'app/shared/config/routes/routes.dart';
import 'app/shared/core/inject_dependency/dependencies.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screen) {
      return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        darkTheme: ThemeData.dark(),
        title: Constants.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: CustomColors.defaultFontColor,
              fontFamily: Constants.appFont),
          colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primary),
          scaffoldBackgroundColor: CustomColors.darkGrey,
          useMaterial3: true,
        ),
        routes: NavigationManager.appRoutes,
      );
    });
  }
}
