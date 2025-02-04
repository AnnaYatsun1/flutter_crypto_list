import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/abstract/abstract_coin_repository.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/crypto_coin.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/model/CryptoCoinDetail.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  CryptoListBloc(this.coinRepository) : super(CryptoListInitial()) {
    on<LoadCryptoListEvent>((event, emit) async {
      try {
        if (state is CryptoLostLoaded) {
          emit(CryptoListLoading());
        }

        final cryptoCoinsList = await coinRepository.getCooinsList();
        emit(CryptoLostLoaded(coinList: cryptoCoinsList));
      } catch (e) {
        emit(CryproListLoadingFailure(e));
        GetIt.I<Talker>().handle(e);
      } finally {
        event.completer?.complete();
      }
    });
  }

  final AbstractCoinRepository coinRepository;
}
