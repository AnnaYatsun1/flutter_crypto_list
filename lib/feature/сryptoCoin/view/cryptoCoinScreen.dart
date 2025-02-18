import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_list_flutter/feature/%D1%81ryptoCoin/block/crypto_coin_block.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/model/models.dart';
import '../../../repo/crypto_coins_repo/abstract/abstract_coin_repository.dart';

class CryptoCoinScreen extends StatefulWidget {
  final CryptoCoin coin;
  const CryptoCoinScreen({super.key, required this.coin});

  @override
  _CryptoCoinScreenState createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinName;

  final _cryptoBlock = CryptoCoinBloc(
    GetIt.I<AbstractCoinRepository>(),
  );

  @override
  void initState() {
    _cryptoBlock.add(LoadCryptoCoinEvent(currencyCode: widget.coin.name));
    super.initState();
  }

  // @override
  // void didChangeDependencies() {
  //   final arg = ModalRoute.of(context)?.settings.arguments;
  //   if (arg is String) {
  //     coinName = arg; // Аргумент — строка
  //   } else if (arg is CryptoCoin) {
  //     coinName = arg.name; // Используем поле `name` объекта CryptoCoin
  //   } else {
  //     // Обрабатываем случай, если аргумент не соответствует ожиданиям
  //     assert(false, 'Argument must be a String or CryptoCoin');
  //   }

  //   setState(() {});
  //   super.didChangeDependencies();
  // }

  final _cryptoDetailBlock = CryptoCoinBloc(
    GetIt.I<AbstractCoinRepository>(),
  );
  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '...'),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: BlocBuilder<CryptoCoinBloc, CryptoCoinState>(
        bloc: _cryptoBlock,
        builder: (context, state) {
          if (state is CryproCoinLoaded) {
            final coin = state.coin;
            final coinDetail = coin.details;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      "Имя: ${coin.name}",
                      style: const TextStyle(fontSize: 18),
                    ),

                    const SizedBox(height: 18), // Отступ между элементами
                    Container(
                      color: Colors.black, // Цвет фона
                      padding: const EdgeInsets.all(20), // Внутренние отступы
                      child: Image.network(
                        coinDetail.fullImageURLPath,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Text('Ошибка загрузки изображения');
                        },
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      color: Colors.black, // Цвет фона
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Цена: \$${coinDetail.priceInUSD}",
                        // toStringAsFixed(2)}",
                        style:
                            const TextStyle(fontSize: 18, color: Colors.green),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 100,
                      color: Colors.black,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Text(
                          "Hight 24h: \$${coinDetail.high24Hour}",
                          // toStringAsFixed(2)}",
                          style: const TextStyle(
                              fontSize: 18, color: Colors.green),
                        ),
                        Text(
                          "Low 24h: ",
                          // \$${coinDetail.low24Hour}",
                          // toStringAsFixed(2)}",
                          style: const TextStyle(
                              fontSize: 18, color: Colors.green),
                        ),
                      ]),
                    ),
                  ]),
                ),
              ],
            );
          }

          if (state is CryproCoinLoadingFailure) {
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
                      // _cryptoBlock.add(LoadCryptoCoinEvent(completer: null));
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
    );
  }
}
