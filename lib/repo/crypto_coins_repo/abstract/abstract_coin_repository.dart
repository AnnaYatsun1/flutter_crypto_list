import 'package:test_list_flutter/repo/crypto_coins_repo/model/CryptoCoinDetail.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/model/crypto_coin.dart';

abstract class AbstractCoinRepository {
  Future<List<CryptoCoin>> getCooinsList();
  Future<CryptoCoin> getCoinsDetail(String currentCode);
}
