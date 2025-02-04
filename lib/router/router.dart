import 'package:test_list_flutter/feature/%D1%81ryptoCoin/view/cryptoCoinScreen.dart';
import 'package:flutter/material.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/model/crypto_coin.dart';
import 'package:auto_route/auto_route.dart';

part 'router.g.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MyHomeRoute.page, initial: true),
      ];
}
