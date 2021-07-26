import 'package:flutter/material.dart';
import 'package:fantasia/app/core/custom_base_view_model.dart';
import 'package:fantasia/app/locator/locator.dart';
import 'package:fantasia/app/router/router.dart';
import 'package:fantasia/app/services/router_service.dart';

class StartupViewModel extends CustomBaseViewModel {
  final RouterService _routerService = locator<RouterService>();

  Future<void> init() async {
    WidgetsBinding.instance!.addPostFrameCallback((Duration duration) async {
      await navigateToHomeView();
    });
  }

  Future navigateToHomeView() async {
    await _routerService.router.push(
      HomeRoute(),
    );
  }
}