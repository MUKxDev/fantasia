// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:fantasia/ui/views/add_new_book/add_new_book_view.dart' as _i5;
import 'package:fantasia/ui/views/home/home_view.dart' as _i4;
import 'package:fantasia/ui/views/start_up/start_up_view.dart' as _i3;
import 'package:flutter/material.dart' as _i2;

class FantasiaRouter extends _i1.RootStackRouter {
  FantasiaRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    StartUpRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.StartUpView();
        }),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.HomeView();
        }),
    AddNewBookRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.AddNewBookView();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(StartUpRoute.name, path: '/'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-view'),
        _i1.RouteConfig(AddNewBookRoute.name, path: '/add-new-book-view')
      ];
}

class StartUpRoute extends _i1.PageRouteInfo {
  const StartUpRoute() : super(name, path: '/');

  static const String name = 'StartUpRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-view');

  static const String name = 'HomeRoute';
}

class AddNewBookRoute extends _i1.PageRouteInfo {
  const AddNewBookRoute() : super(name, path: '/add-new-book-view');

  static const String name = 'AddNewBookRoute';
}
