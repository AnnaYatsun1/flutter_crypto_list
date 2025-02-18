import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_list_flutter/feature/cryptoList/block/crypto_list_bloc.dart';
import 'package:test_list_flutter/feature/cryptoList/widgets/widgest.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/crypto_coin.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => CryptoListScreen();
}

class CryptoListScreen extends State<MyHomePage> {
  @override
  void initState() {
    _cryptoBlock.add(LoadCryptoListEvent(completer: null));
    super.initState();
  }

  // List<CryptoCoin>? _cryptoCoinsList;
  final _cryptoBlock = CryptoListBloc(
    GetIt.I<AbstractCoinRepository>(),
  );

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("My crypto app", style: them.appBarTheme.titleTextStyle),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          final completer = Completer();
          _cryptoBlock.add(LoadCryptoListEvent(completer: completer));
          return completer.future;
        },
        child: BlocBuilder<CryptoListBloc, CryptoListState>(
          bloc: _cryptoBlock,
          builder: (context, state) {
            if (state is CryptoLostLoaded) {
              return ListView.separated(
                padding: const EdgeInsets.only(top: 16),
                itemCount: state.coinList.length,
                separatorBuilder: (context, index) =>
                    const Divider(thickness: 1, indent: 35, endIndent: 0),
                itemBuilder: (context, i) {
                  final coin = state.coinList[i];
                  return CryptoCoinTile(coin: coin);
                },
              );
            }
            if (state is CryproListLoadingFailure) {
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Something went wrong',
                    style: them.textTheme.labelMedium,
                  ),
                  Text(
                    'Pls try aging later',
                    style: them.textTheme.labelSmall?.copyWith(fontSize: 16),
                  ),
                  const SizedBox(height: 30),
                  OutlinedButton(
                      onPressed: () {
                        _cryptoBlock.add(LoadCryptoListEvent(completer: null));
                      },
                      child: const Text('Try aging'))
                ],
              ));
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
