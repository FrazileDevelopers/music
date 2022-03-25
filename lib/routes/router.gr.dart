// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:music/pages/bottomNavHome/bottomNavHome.dart' as _i2;
import 'package:music/pages/genre/genre.dart' as _i4;
import 'package:music/pages/home/home.dart' as _i5;
import 'package:music/pages/location/location.dart' as _i7;
import 'package:music/pages/login/login.dart' as _i3;
import 'package:music/pages/mymusic/mymusic.dart' as _i6;
import 'package:music/pages/splash/splash.dart' as _i1;

class MusicRouter extends _i8.RootStackRouter {
  MusicRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.Splash());
    },
    BottomNavHomeRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.BottomNavHome());
    },
    LoginRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.Login());
    },
    GenreRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.Genre());
    },
    HomeRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    MyMusicRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.MyMusic());
    },
    LocationRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.Location());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRouter.name, path: '/'),
        _i8.RouteConfig(BottomNavHomeRouter.name,
            path: '/bottom-nav-home',
            children: [
              _i8.RouteConfig(HomeRouter.name,
                  path: 'home-page', parent: BottomNavHomeRouter.name),
              _i8.RouteConfig(MyMusicRouter.name,
                  path: 'my-music', parent: BottomNavHomeRouter.name),
              _i8.RouteConfig(LocationRouter.name,
                  path: 'Location', parent: BottomNavHomeRouter.name)
            ]),
        _i8.RouteConfig(LoginRouter.name, path: '/Login'),
        _i8.RouteConfig(GenreRouter.name, path: '/Genre')
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRouter extends _i8.PageRouteInfo<void> {
  const SplashRouter() : super(SplashRouter.name, path: '/');

  static const String name = 'SplashRouter';
}

/// generated route for
/// [_i2.BottomNavHome]
class BottomNavHomeRouter extends _i8.PageRouteInfo<void> {
  const BottomNavHomeRouter({List<_i8.PageRouteInfo>? children})
      : super(BottomNavHomeRouter.name,
            path: '/bottom-nav-home', initialChildren: children);

  static const String name = 'BottomNavHomeRouter';
}

/// generated route for
/// [_i3.Login]
class LoginRouter extends _i8.PageRouteInfo<void> {
  const LoginRouter() : super(LoginRouter.name, path: '/Login');

  static const String name = 'LoginRouter';
}

/// generated route for
/// [_i4.Genre]
class GenreRouter extends _i8.PageRouteInfo<void> {
  const GenreRouter() : super(GenreRouter.name, path: '/Genre');

  static const String name = 'GenreRouter';
}

/// generated route for
/// [_i5.HomePage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home-page');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i6.MyMusic]
class MyMusicRouter extends _i8.PageRouteInfo<void> {
  const MyMusicRouter() : super(MyMusicRouter.name, path: 'my-music');

  static const String name = 'MyMusicRouter';
}

/// generated route for
/// [_i7.Location]
class LocationRouter extends _i8.PageRouteInfo<void> {
  const LocationRouter() : super(LocationRouter.name, path: 'Location');

  static const String name = 'LocationRouter';
}
