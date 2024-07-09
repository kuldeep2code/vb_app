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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:vb_app/data/services/models/V3Subscription.dart' as _i11;
import 'package:vb_app/guards/index.dart' as _i10;
import 'package:vb_app/language.dart' as _i4;
import 'package:vb_app/screens/Auth/index.dart' as _i2;
import 'package:vb_app/screens/Home/home.dart' as _i3;
import 'package:vb_app/screens/Home/Premium/v4/custom_payment_option.dart'
    as _i6;
import 'package:vb_app/screens/Home/Premium/v4/thanku_page.dart' as _i7;
import 'package:vb_app/screens/Offline/index.dart' as _i5;
import 'package:vb_app/splash.dart' as _i1;

class Router extends _i8.RootStackRouter {
  Router({
    _i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i10.AuthGuard authGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i1.SplashScreen(),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i2.SignUpScreen(),
      );
    },
    HomeWrapperRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i3.HomeWrapper(),
      );
    },
    LanguageScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LanguageScreenRouteArgs>();
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.LanguageScreen(
          args.hasUserData,
          args.hasToken,
        ),
      );
    },
    OfflineHomeRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.OfflineHome(),
      );
    },
    CustomPaymentScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CustomPaymentScreenRouteArgs>();
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i6.CustomPaymentScreen(
          key: args.key,
          subscription: args.subscription,
        ),
      );
    },
    ThankYouPageRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ThankYouPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          SignUpScreenRoute.name,
          path: '/Authentication',
        ),
        _i8.RouteConfig(
          HomeWrapperRoute.name,
          path: '/Home',
          guards: [authGuard],
        ),
        _i8.RouteConfig(
          LanguageScreenRoute.name,
          path: '/Language',
        ),
        _i8.RouteConfig(
          OfflineHomeRoute.name,
          path: 'OfflineHome',
        ),
        _i8.RouteConfig(
          CustomPaymentScreenRoute.name,
          path: 'CustomPaymentScreen',
        ),
        _i8.RouteConfig(
          ThankYouPageRoute.name,
          path: 'ThankYouPage',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i8.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.SignUpScreen]
class SignUpScreenRoute extends _i8.PageRouteInfo<void> {
  const SignUpScreenRoute()
      : super(
          SignUpScreenRoute.name,
          path: '/Authentication',
        );

  static const String name = 'SignUpScreenRoute';
}

/// generated route for
/// [_i3.HomeWrapper]
class HomeWrapperRoute extends _i8.PageRouteInfo<void> {
  const HomeWrapperRoute()
      : super(
          HomeWrapperRoute.name,
          path: '/Home',
        );

  static const String name = 'HomeWrapperRoute';
}

/// generated route for
/// [_i4.LanguageScreen]
class LanguageScreenRoute extends _i8.PageRouteInfo<LanguageScreenRouteArgs> {
  LanguageScreenRoute({
    required bool hasUserData,
    required bool hasToken,
  }) : super(
          LanguageScreenRoute.name,
          path: '/Language',
          args: LanguageScreenRouteArgs(
            hasUserData: hasUserData,
            hasToken: hasToken,
          ),
        );

  static const String name = 'LanguageScreenRoute';
}

class LanguageScreenRouteArgs {
  const LanguageScreenRouteArgs({
    required this.hasUserData,
    required this.hasToken,
  });

  final bool hasUserData;

  final bool hasToken;

  @override
  String toString() {
    return 'LanguageScreenRouteArgs{hasUserData: $hasUserData, hasToken: $hasToken}';
  }
}

/// generated route for
/// [_i5.OfflineHome]
class OfflineHomeRoute extends _i8.PageRouteInfo<void> {
  const OfflineHomeRoute()
      : super(
          OfflineHomeRoute.name,
          path: 'OfflineHome',
        );

  static const String name = 'OfflineHomeRoute';
}

/// generated route for
/// [_i6.CustomPaymentScreen]
class CustomPaymentScreenRoute
    extends _i8.PageRouteInfo<CustomPaymentScreenRouteArgs> {
  CustomPaymentScreenRoute({
    _i9.Key? key,
    required _i11.Subscription subscription,
  }) : super(
          CustomPaymentScreenRoute.name,
          path: 'CustomPaymentScreen',
          args: CustomPaymentScreenRouteArgs(
            key: key,
            subscription: subscription,
          ),
        );

  static const String name = 'CustomPaymentScreenRoute';
}

class CustomPaymentScreenRouteArgs {
  const CustomPaymentScreenRouteArgs({
    this.key,
    required this.subscription,
  });

  final _i9.Key? key;

  final _i11.Subscription subscription;

  @override
  String toString() {
    return 'CustomPaymentScreenRouteArgs{key: $key, subscription: $subscription}';
  }
}

/// generated route for
/// [_i7.ThankYouPage]
class ThankYouPageRoute extends _i8.PageRouteInfo<void> {
  const ThankYouPageRoute()
      : super(
          ThankYouPageRoute.name,
          path: 'ThankYouPage',
        );

  static const String name = 'ThankYouPageRoute';
}
