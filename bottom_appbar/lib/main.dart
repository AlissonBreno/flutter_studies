import 'package:bottom_appbar/constants/size_config.dart';
import 'package:bottom_appbar/constants/styling.dart';
import 'package:flutter/material.dart';
import 'menu_page.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
              ],
              supportedLocales: [const Locale('pt', 'BR')],
              title: 'BottomNavigation Test',
              home: MenuBottomBar(),
            );
          },
        );
      },
    );
  }
}
