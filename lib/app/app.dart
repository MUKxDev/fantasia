import 'package:fantasia/app/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fantasia/app/locator/locator.dart';
import 'package:fantasia/app/services/router_service.dart';
import 'package:stacked_themes/stacked_themes.dart';

class FantasiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RouterService _routerService = locator<RouterService>();

    return ThemeBuilder(
      darkTheme: darkTheme,
      themes: appThemes,
      builder: (BuildContext context, ThemeData? regularTheme,
              ThemeData? darkTheme, ThemeMode? themeMode) =>
          MaterialApp.router(
        title: "Fantasia",
        routeInformationParser: _routerService.router.defaultRouteParser(),
        routerDelegate: _routerService.router.delegate(),
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        debugShowCheckedModeBanner: false,
        scrollBehavior: const CupertinoScrollBehavior(),
      ),
    );
  }
}
