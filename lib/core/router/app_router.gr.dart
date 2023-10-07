// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter_auth_app/presentation/auth/auth_screen.dart' as _i1;
import 'package:flutter_auth_app/presentation/set_profile/set_profile_screen.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    SetProfileRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SetProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i3.PageRouteInfo<void> {
  const AuthRoute({List<_i3.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SetProfileScreen]
class SetProfileRoute extends _i3.PageRouteInfo<void> {
  const SetProfileRoute({List<_i3.PageRouteInfo>? children})
      : super(
          SetProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'SetProfileRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
