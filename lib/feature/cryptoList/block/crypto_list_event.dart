part of 'crypto_list_bloc.dart';

abstract class CryptoListEvent extends Equatable {}

class LoadCryptoListEvent extends CryptoListEvent {
  final Completer? completer;

  LoadCryptoListEvent({required this.completer});

  @override
  // TODO: implement props
  List<Object?> get props => [completer];
}
