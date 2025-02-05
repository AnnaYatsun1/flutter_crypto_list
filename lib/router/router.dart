import 'package:auto_route/auto_route.dart';

import 'package:test_list_flutter/router/router.gr.dart';

const REPLACE_IN_ROUTE_NAME = 'Screen|Page,Route';

@AutoRouterConfig(replaceInRouteName: REPLACE_IN_ROUTE_NAME)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MyHomeRoute.page, initial: true),
      ];
}
