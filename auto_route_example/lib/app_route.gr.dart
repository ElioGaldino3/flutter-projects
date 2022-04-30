// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import 'pages/dashboard/dashboard.dart' as _i5;
import 'pages/dashboard/pages/page1.dart' as _i6;
import 'pages/dashboard/pages/page2.dart' as _i7;
import 'pages/dashboard/pages/page3.dart' as _i8;
import 'pages/home_page.dart' as _i1;
import 'pages/item_detail_page.dart' as _i3;
import 'pages/list_page.dart' as _i2;
import 'pages/not_found_page.dart' as _i4;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ListRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ListPage());
    },
    ItemDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ItemDetailRouteArgs>(
          orElse: () =>
              ItemDetailRouteArgs(user: pathParams.getString('userName')));
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ItemDetailPage(key: args.key, user: args.user));
    },
    NotFoundRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NotFoundPage());
    },
    DashboardRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.DashboardPage());
    },
    Route1.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Page1());
    },
    Route2.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Page2());
    },
    Route3.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Page3());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(HomeRoute.name, path: '/'),
        _i9.RouteConfig(ListRoute.name, path: '/list-page'),
        _i9.RouteConfig(ItemDetailRoute.name, path: '/item-detail/:userName'),
        _i9.RouteConfig(NotFoundRoute.name, path: '*'),
        _i9.RouteConfig(DashboardRoute.name, path: '/dashboard', children: [
          _i9.RouteConfig(Route1.name, path: '', parent: DashboardRoute.name),
          _i9.RouteConfig(Route2.name,
              path: 'Page2', parent: DashboardRoute.name),
          _i9.RouteConfig(Route3.name,
              path: 'Page3', parent: DashboardRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ListPage]
class ListRoute extends _i9.PageRouteInfo<void> {
  const ListRoute() : super(ListRoute.name, path: '/list-page');

  static const String name = 'ListRoute';
}

/// generated route for
/// [_i3.ItemDetailPage]
class ItemDetailRoute extends _i9.PageRouteInfo<ItemDetailRouteArgs> {
  ItemDetailRoute({_i10.Key? key, required String user})
      : super(ItemDetailRoute.name,
            path: '/item-detail/:userName',
            args: ItemDetailRouteArgs(key: key, user: user),
            rawPathParams: {'userName': user});

  static const String name = 'ItemDetailRoute';
}

class ItemDetailRouteArgs {
  const ItemDetailRouteArgs({this.key, required this.user});

  final _i10.Key? key;

  final String user;

  @override
  String toString() {
    return 'ItemDetailRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i4.NotFoundPage]
class NotFoundRoute extends _i9.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '*');

  static const String name = 'NotFoundRoute';
}

/// generated route for
/// [_i5.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(DashboardRoute.name,
            path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i6.Page1]
class Route1 extends _i9.PageRouteInfo<void> {
  const Route1() : super(Route1.name, path: '');

  static const String name = 'Route1';
}

/// generated route for
/// [_i7.Page2]
class Route2 extends _i9.PageRouteInfo<void> {
  const Route2() : super(Route2.name, path: 'Page2');

  static const String name = 'Route2';
}

/// generated route for
/// [_i8.Page3]
class Route3 extends _i9.PageRouteInfo<void> {
  const Route3() : super(Route3.name, path: 'Page3');

  static const String name = 'Route3';
}
