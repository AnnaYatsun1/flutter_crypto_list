import 'dart:async';
import 'dart:math';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:test_list_flutter/feature/cryptoList.dart';
import 'package:test_list_flutter/firebase_options.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/abstract/abstract_coin_repository.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/cryptoCoinsRepo.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/model/crypto_coin.dart';
import 'package:test_list_flutter/router/router.dart';
import 'package:test_list_flutter/ui/theme/theme.dart';

import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'repo/crypto_coins_repo/model/CryptoCoinDetail.dart';

final getIt = GetIt.instance;
final talker = TalkerFlutter.init();
final dio = Dio();
late Isar isaDB;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton(talker);
  getIt<Talker>().debug('Talker working correct');
  await Isar.initializeIsarCore();
  final dir = await getApplicationDocumentsDirectory();
  isaDB = await Isar.open([CryptoCoinSchema], directory: dir.path);
  getIt.registerSingleton<AbstractCoinRepository>(
    CryptocoinsRepo(dio: dio, isar: isaDB),
  );

  final firebase = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  talker.info(firebase);
  dio.interceptors.add(
    TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(),
      talker: talker,
    ),
  );

  Bloc.observer = TalkerBlocObserver(talker: talker);
  FlutterError.onError =
      (details) => getIt<Talker>().handle(details.exception, details.stack);

  runZonedGuarded(() => runApp(const MycCryptoApp()),
      ((error, stack) => {getIt<Talker>().handle(error, stack)}));
}

class MycCryptoApp extends StatefulWidget {
  const MycCryptoApp({super.key});

  @override
  State<MycCryptoApp> createState() => _MycCryptoAppState();
}

class _MycCryptoAppState extends State<MycCryptoApp> {
  // This widget is the root of your application.
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: darkThem,
      // initialRoute: '/',
      routerConfig: _appRouter.config(
          // navigatorObservers () => : [TalkerRouteObserver(GetIt.I<Talker>())]
          ),
      // navigatorObservers: [TalkerRouteObserver(GetIt.I<Talker>())],
      // routes: routes,
      // home: const MyHomePage(title: 'My crypto app'),
    );
  }
}
