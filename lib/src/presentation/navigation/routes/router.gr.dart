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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../pages/authorization/forgot_password/forgot_password_page.dart'
    as _i2;
import '../../pages/authorization/new_password/new_password_page.dart' as _i4;
import '../../pages/authorization/password_recovery/password_recovery_page.dart'
    as _i3;
import '../../pages/authorization/sign_in/sign_in_page.dart' as _i1;
import '../../pages/calendar/calendar_page.dart' as _i8;
import '../../pages/create_edit_post/create_edit_post.dart' as _i6;
import '../../pages/home_page.dart' as _i5;
import '../../pages/menu/menu_page.dart' as _i11;
import '../../pages/my_cabinet/my_cabinet_page.dart' as _i9;
import '../../pages/news_feed/news_feed_page.dart' as _i7;
import '../../pages/user_profile/user_profile_page.dart' as _i10;
import '../../post_cubit/post_model.dart' as _i15;
import '../route_args/password_recovery_page_args.dart' as _i14;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SignInRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignInPage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ForgotPasswordPage());
    },
    PasswordRecoveryRoute.name: (routeData) {
      final args = routeData.argsAs<PasswordRecoveryRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PasswordRecoveryPage(key: args.key, args: args.args));
    },
    NewPasswordRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NewPasswordPage());
    },
    HomePageRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    CreateEditPost.name: (routeData) {
      final args = routeData.argsAs<CreateEditPostArgs>(
          orElse: () => const CreateEditPostArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.CreateEditPost(key: args.key, post: args.post));
    },
    NewsFeedRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.NewsFeedPage());
    },
    CalendarRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.CalendarPage());
    },
    MyCabinetRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.MyCabinetPage());
    },
    UserProfileRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.UserProfilePage());
    },
    MenuRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.MenuPage());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SignInRouter.name, path: '/'),
        _i12.RouteConfig(ForgotPasswordRoute.name, path: '/forgot_password'),
        _i12.RouteConfig(PasswordRecoveryRoute.name,
            path: '/password_recovery'),
        _i12.RouteConfig(NewPasswordRoute.name, path: '/new_password'),
        _i12.RouteConfig(HomePageRouter.name, path: '/home_page', children: [
          _i12.RouteConfig(NewsFeedRouter.name,
              path: 'news_feed', parent: HomePageRouter.name),
          _i12.RouteConfig(CalendarRouter.name,
              path: 'calendar', parent: HomePageRouter.name),
          _i12.RouteConfig(MyCabinetRouter.name,
              path: 'my_cabinet', parent: HomePageRouter.name),
          _i12.RouteConfig(UserProfileRouter.name,
              path: 'user_profile', parent: HomePageRouter.name),
          _i12.RouteConfig(MenuRouter.name,
              path: 'menu', parent: HomePageRouter.name)
        ]),
        _i12.RouteConfig(CreateEditPost.name, path: '/create_edit_post')
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRouter extends _i12.PageRouteInfo<void> {
  const SignInRouter() : super(SignInRouter.name, path: '/');

  static const String name = 'SignInRouter';
}

/// generated route for
/// [_i2.ForgotPasswordPage]
class ForgotPasswordRoute extends _i12.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: '/forgot_password');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i3.PasswordRecoveryPage]
class PasswordRecoveryRoute
    extends _i12.PageRouteInfo<PasswordRecoveryRouteArgs> {
  PasswordRecoveryRoute(
      {_i13.Key? key, required _i14.PasswordRecoveryPageArgs args})
      : super(PasswordRecoveryRoute.name,
            path: '/password_recovery',
            args: PasswordRecoveryRouteArgs(key: key, args: args));

  static const String name = 'PasswordRecoveryRoute';
}

class PasswordRecoveryRouteArgs {
  const PasswordRecoveryRouteArgs({this.key, required this.args});

  final _i13.Key? key;

  final _i14.PasswordRecoveryPageArgs args;

  @override
  String toString() {
    return 'PasswordRecoveryRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [_i4.NewPasswordPage]
class NewPasswordRoute extends _i12.PageRouteInfo<void> {
  const NewPasswordRoute()
      : super(NewPasswordRoute.name, path: '/new_password');

  static const String name = 'NewPasswordRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomePageRouter extends _i12.PageRouteInfo<void> {
  const HomePageRouter({List<_i12.PageRouteInfo>? children})
      : super(HomePageRouter.name,
            path: '/home_page', initialChildren: children);

  static const String name = 'HomePageRouter';
}

/// generated route for
/// [_i6.CreateEditPost]
class CreateEditPost extends _i12.PageRouteInfo<CreateEditPostArgs> {
  CreateEditPost({_i13.Key? key, _i15.Post? post})
      : super(CreateEditPost.name,
            path: '/create_edit_post',
            args: CreateEditPostArgs(key: key, post: post));

  static const String name = 'CreateEditPost';
}

class CreateEditPostArgs {
  const CreateEditPostArgs({this.key, this.post});

  final _i13.Key? key;

  final _i15.Post? post;

  @override
  String toString() {
    return 'CreateEditPostArgs{key: $key, post: $post}';
  }
}

/// generated route for
/// [_i7.NewsFeedPage]
class NewsFeedRouter extends _i12.PageRouteInfo<void> {
  const NewsFeedRouter() : super(NewsFeedRouter.name, path: 'news_feed');

  static const String name = 'NewsFeedRouter';
}

/// generated route for
/// [_i8.CalendarPage]
class CalendarRouter extends _i12.PageRouteInfo<void> {
  const CalendarRouter() : super(CalendarRouter.name, path: 'calendar');

  static const String name = 'CalendarRouter';
}

/// generated route for
/// [_i9.MyCabinetPage]
class MyCabinetRouter extends _i12.PageRouteInfo<void> {
  const MyCabinetRouter() : super(MyCabinetRouter.name, path: 'my_cabinet');

  static const String name = 'MyCabinetRouter';
}

/// generated route for
/// [_i10.UserProfilePage]
class UserProfileRouter extends _i12.PageRouteInfo<void> {
  const UserProfileRouter()
      : super(UserProfileRouter.name, path: 'user_profile');

  static const String name = 'UserProfileRouter';
}

/// generated route for
/// [_i11.MenuPage]
class MenuRouter extends _i12.PageRouteInfo<void> {
  const MenuRouter() : super(MenuRouter.name, path: 'menu');

  static const String name = 'MenuRouter';
}
