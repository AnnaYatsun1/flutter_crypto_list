// part of 'crypto_coin_block.dart';

// abstract class CryptoCoinState extends Equatable {}

// class CryptoCoinInitial extends CryptoCoinState {
//   @override
//   List<Object?> get props => [];
// }

// class CryproCoinLoading extends CryptoCoinState {
//  @override
//   List<Object?> get props => [];
// }

// class CryproCoinLoaded extends CryptoCoinState {
//   final CryptoCoinDetail coin;

//   CryproCoinLoaded({
//     required this.coin
//   })

//   // @override
//   // List<Object?> get props => [coin];

//   @override
//   // TODO: implement props
//   List<Object?> get props => [coin];
//   }

// class CryproCoinLoadingFailure extends CryptoCoinState {
//   final Object exeption;

//   CryproCoinLoadingFailure(this.exeption);
//     @override
//   List<Object?> get props => [exeption];
// }

part of 'crypto_coin_block.dart';

abstract class CryptoCoinState extends Equatable {}

class CryptoCoinInitial extends CryptoCoinState {
  @override
  List<Object?> get props => [];
}

class CryproCoinLoading extends CryptoCoinState {
  @override
  List<Object?> get props => [];
}

class CryproCoinLoaded extends CryptoCoinState {
  final CryptoCoin coin;

  CryproCoinLoaded({
    required this.coin,
  }); // Короткая запись конструктора

  @override
  List<Object?> get props => [coin];
}

class CryproCoinLoadingFailure extends CryptoCoinState {
  final Object exception;

  CryproCoinLoadingFailure(this.exception);

  @override
  List<Object?> get props => [exception];
}
