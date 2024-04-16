// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../features/main/screens/main/common_imports.dart' as _i8;
import '../features/main/screens/main/main_screen.dart' as _i3;
import '../features/main/tabs/dashboard_images_list_screen/screen/dashboard_shipment_list_screen.dart'
    as _i4;
import '../features/splash/screens/splash_screen.dart' as _i1;
import 'guards/auth_guard.dart' as _i7;
import 'router.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter({
    _i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i7.AuthGuard authGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        transitionsBuilder: _i8.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthRouter.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.EmptyRouterPage(),
        transitionsBuilder: _i8.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
        transitionsBuilder: _i8.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardImagesListRouter.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardImagesListScreen(),
        transitionsBuilder: _i8.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/splash',
          guards: [authGuard],
          children: [
            _i5.RouteConfig(
              '*#redirect',
              path: '*',
              parent: SplashRoute.name,
              redirectTo: '',
              fullMatch: true,
            )
          ],
        ),
        _i5.RouteConfig(
          AuthRouter.name,
          path: '/auth',
        ),
        _i5.RouteConfig(
          MainRoute.name,
          path: '/main',
          guards: [authGuard],
          children: [
            _i5.RouteConfig(
              DashboardImagesListRouter.name,
              path: 'dashboard-images-list',
              parent: MainRoute.name,
            )
          ],
        ),
        _i5.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/splash',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          path: '/splash',
          initialChildren: children,
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class AuthRouter extends _i5.PageRouteInfo<void> {
  const AuthRouter()
      : super(
          AuthRouter.name,
          path: '/auth',
        );

  static const String name = 'AuthRouter';
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i4.DashboardImagesListScreen]
class DashboardImagesListRouter extends _i5.PageRouteInfo<void> {
  const DashboardImagesListRouter()
      : super(
          DashboardImagesListRouter.name,
          path: 'dashboard-images-list',
        );

  static const String name = 'DashboardImagesListRouter';
}
