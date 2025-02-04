part of 'crypto_list_bloc.dart';

abstract class CryptoListState extends Equatable {}

class CryptoListInitial extends CryptoListState {
  @override
  List<Object?> get props => [];
}

class CryptoListLoading extends CryptoListState {
  @override
  List<Object?> get props => [];
}

class CryptoLostLoaded extends CryptoListState {
  final List<CryptoCoin> coinList;

  CryptoLostLoaded({
    required this.coinList,
  });

  @override
  List<Object?> get props => [coinList];
}

class CryproListLoadingFailure extends CryptoListState {
  final Object exeption;

  CryproListLoadingFailure(this.exeption);

  @override
  List<Object?> get props => [exeption];
}
