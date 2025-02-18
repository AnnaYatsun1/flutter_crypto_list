import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:test_list_flutter/main.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/abstract/abstract_coin_repository.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/model/CryptoCoinDetail.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/model/crypto_coin.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CryptocoinsRepo implements AbstractCoinRepository {
  final Dio dio;
  final Isar isar;
  CryptocoinsRepo({required this.dio, required this.isar});

  @override
  Future<List<CryptoCoin>> getCooinsList() async {
    // final cachedCoins = await isar.cryptoCoins.where().findAll();
    // if (cachedCoins.isNotEmpty) {
    //   debugPrint("✅ Загружаем данные из кеша (${cachedCoins.length} монет)");
    //   return cachedCoins;
    // }
    try {
      final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,SOL,AID,CAG,DOV&tsyms=USD',
      );

      // Печать полного ответа для отладки
      debugPrint(response.data.toString());

      // Извлечение данных из ответа
      final data = response.data['RAW'] as Map<String, dynamic>;

      // Создание списка объектов CryptoCoin
      final dataList = data.entries.map((entry) {
        final symbol = entry.key;
        final value = entry.value as Map<String, dynamic>;
        final usdData = value['USD'] as Map<String, dynamic>;
        final details = CryptoCoinDetail.fromJson(usdData);

        final imageURL = usdData['IMAGEURL'];
        // debugPrint(usdData['IMAGEURL']);
        talker.debug(details);
        return CryptoCoin(name: symbol, details: details);
      }).toList();

      await isar.writeTxn(() async {
        // await isar.cryptoCoins.putAll(dataList);
      });

      return dataList;
    } catch (e) {
      debugPrint('Error while fetching data: $e');
      return []; // Возвращаем пустой список в случае ошибки
    }
  }

  @override
  Future<CryptoCoin> getCoinsDetail(String currentCode) async {
    try {
      final response = await dio.get(
          'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=$currentCode&tsyms=USD');

      final data = response.data as Map<String, dynamic>;
      final raw = data['RAW'] as Map<String, dynamic>;
      final coinData = raw[currentCode] as Map<String, dynamic>;
      final usdData = coinData['USD'] as Map<String, dynamic>;
      final details = CryptoCoinDetail.fromJson(usdData);

      return CryptoCoin(name: currentCode, details: details);
    } catch (e) {
      debugPrint('Error while fetching data: $e');
      throw Exception(
          'Failed to fetch coin details: $e'); // Возвращаем пустой список в случае ошибки
    }
  }
}
