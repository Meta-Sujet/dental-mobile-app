import 'package:auto_route/auto_route.dart';
import 'package:dental_mobile_app/src/presentation/pages/authorization/forgot_password/forgot_password_page.dart';
import 'package:dental_mobile_app/src/presentation/pages/authorization/new_password/new_password_page.dart';
import 'package:dental_mobile_app/src/presentation/pages/authorization/password_recovery/password_recovery_page.dart';
import 'package:dental_mobile_app/src/presentation/pages/calendar/calendar_page.dart';
import 'package:dental_mobile_app/src/presentation/pages/create_edit_post/create_edit_post.dart';
import 'package:dental_mobile_app/src/presentation/pages/home_page.dart';
import 'package:dental_mobile_app/src/presentation/pages/menu/menu_page.dart';
import 'package:dental_mobile_app/src/presentation/pages/my_cabinet/my_cabinet_page.dart';
import 'package:dental_mobile_app/src/presentation/pages/news_feed/news_feed_page.dart';
import 'package:dental_mobile_app/src/presentation/pages/user_profile/user_profile_page.dart';
import 'package:injectable/injectable.dart';

import '../../pages/authorization/sign_in/sign_in_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      name: 'SignInRouter',
      page: SignInPage,
    ),
    AutoRoute(
      path: '/forgot_password',
      page: ForgotPasswordPage,
    ),
    AutoRoute(
      path: '/password_recovery',
      page: PasswordRecoveryPage,
    ),
    AutoRoute(
      path: '/new_password',
      page: NewPasswordPage,
    ),
    AutoRoute(
      path: '/home_page',
      name: 'HomePageRouter',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'news_feed',
          name: 'NewsFeedRouter',
          page: NewsFeedPage,
        ),
        AutoRoute(
          path: 'calendar',
          name: 'CalendarRouter',
          page: CalendarPage,
        ),
        AutoRoute(
          path: 'my_cabinet',
          name: 'MyCabinetRouter',
          page: MyCabinetPage,
        ),
        AutoRoute(
          path: 'user_profile',
          name: 'UserProfileRouter',
          page: UserProfilePage,
        ),
        AutoRoute(
          path: 'menu',
          name: 'MenuRouter',
          page: MenuPage,
        ),
      ],
    ),
    AutoRoute(
      path: '/create_edit_post',
      page: CreateEditPost,
    ),
  ],
)
class $AppRouter {}
