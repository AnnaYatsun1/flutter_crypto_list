part of 'crypto_coin_block.dart';

// abstract class CryptoCoinEvent extends Equatable {

//  @override
//   List<Object> get props => [];
// }

// class LoadCryptoCoinEvent extends CryptoCoinEvent {

//    LoadCryptoCoinEvent({
//     required this.currencyCode,
//   });

//   final String currencyCode;

//   @override
//   List<Object?> get props => super.props..add(currencyCode);
// }

abstract class CryptoCoinEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadCryptoCoinEvent extends CryptoCoinEvent {
  LoadCryptoCoinEvent({
    required this.currencyCode,
  });

  final String currencyCode;

  @override
  List<Object> get props => super.props..add(currencyCode);
  // currencyCode];
}
