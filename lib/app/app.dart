import 'package:fantasia/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fantasia/app/locator/locator.dart';
import 'package:fantasia/app/services/router_service.dart';

class FantasiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RouterService _routerService = locator<RouterService>();

    return MaterialApp.router(
      title: "Fantasia",
      debugShowCheckedModeBanner: false,
      routeInformationParser: _routerService.router.defaultRouteParser(),
      routerDelegate: _routerService.router.delegate(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
