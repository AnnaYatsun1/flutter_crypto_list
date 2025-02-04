import 'dart:async';
// import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_list_flutter/feature/cryptoList/block/crypto_list_bloc.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/crypto_coin.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/abstract/abstract_coin_repository.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/model/CryptoCoinDetail.dart';
// import 'package:test_list_flutter/repo/crypto_coins_repo/abstract/abstract_coin_repository.dart';
part 'crypto_coin_event.dart';
part 'crypto_coin_state.dart';

class CryptoCoinBloc extends Bloc<CryptoCoinEvent, CryptoCoinState> {
  final AbstractCoinRepository coinRepository;

  CryptoCoinBloc(this.coinRepository) : super(CryptoCoinInitial()) {
    on<LoadCryptoCoinEvent>(_load);
  }

  Future<void> _load(
      LoadCryptoCoinEvent event, Emitter<CryptoCoinState> emit) async {
    emit(CryproCoinLoading());
    try {
      // Пример вызова репозитория для п
      //олучения данных
      if (state is CryproCoinLoaded) {
        emit(CryproCoinLoading());
      }
      final cryptoCoins =
          await coinRepository.getCoinsDetail(event.currencyCode);
      emit(CryproCoinLoaded(coin: cryptoCoins));
      print(cryptoCoins);
      // emit(CryproCoinLoaded(cryptoCoins));
    } catch (e) {
      emit(CryproCoinLoadingFailure('Failed to load info about coins'));
      GetIt.I<Talker>().handle(e);
    }
  }
}
