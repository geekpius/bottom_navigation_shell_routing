

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:shell_routing/main_menu.dart';
import 'package:shell_routing/views/home/sub_home_view.dart';

import '../views/home/home_view.dart';
import '../views/home/sub_home_detail_view.dart';
import '../views/setting/setting_view.dart';
import '../views/setting/sub_setting_view.dart';

class AppNavigator{
  static String get initialRoute => '/home';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'HomeShell');
  static final _settingNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'SettingShell');

  static final router = GoRouter(
    initialLocation: initialRoute,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => MainMenu(navigationShell: navigationShell,),
        branches: [
          StatefulShellBranch(
            navigatorKey: _homeNavigatorKey,
            routes: [
              GoRoute(
                path: '/home',
                name: 'Home',
                builder: (context, state) => HomeView(key: state.pageKey,),
                routes: [
                  GoRoute(
                    path: 'sub-home',
                    name: 'SubHome',
                    builder: (context, state) => SubHomeView(key: state.pageKey,),
                    routes: [
                      GoRoute(
                        path: 'sub-home/:id',
                        name: 'SubHomeDetail',
                        builder: (context, state) => SubHomeDetailView(key: state.pageKey, index: int.parse(state.pathParameters['id']?? '0'),),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _settingNavigatorKey,
            routes: [
              GoRoute(
                path: '/setting',
                name: 'Setting',
                builder: (context, state) => SettingView(key: state.pageKey,),
                routes: [
                  GoRoute(
                    path: 'sub-setting',
                    name: 'SubSetting',
                    builder: (context, state) => SubSettingView(key: state.pageKey,),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

}