import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'CryptoCoinDetail.g.dart';

// @JsonSerializable(explicitToJson: true)
// @Embedded()
// class CryptoCoinDetail extends Equatable {
//   @JsonKey(name: 'PRICE')
//   final double? priceInUSD;

//   @JsonKey(name: 'IMAGEURL')
//   final String? imageURL;

//   String get fullImageURLPath => 'https://www.cryptocompare.com/$imageURL';

//   @JsonKey(name: 'TOSYMBOL')
//   final String? toSymbol;

//   @JsonKey(
//     name: 'LASTUPDATE',
//     toJson: _dateToJson,
//     fromJson: _dateFromJson,
//   )
//   final DateTime lastUpdate;

//   @JsonKey(name: 'HIGH24HOUR')
//   final double? hight24Hour;

//   @JsonKey(name: 'LOW24HOUR')
//   final double? low24Hour;

//   const CryptoCoinDetail(
//     this.toSymbol,
//     this.lastUpdate,
//     this.hight24Hour,
//     this.low24Hour,
//     this.imageURL,
//     this.priceInUSD,
//   );

//   factory CryptoCoinDetail.fromJson(Map<String, dynamic> json) =>
//       _$CryptoCoinDetailFromJson(json);

//   Map<String, dynamic> toJson() => _$CryptoCoinDetailToJson(this);

//   static int _dateToJson(DateTime dateTime) => dateTime.millisecondsSinceEpoch;

//   static DateTime _dateFromJson(int milliseconds) =>
//       DateTime.fromMicrosecondsSinceEpoch(milliseconds);

//   @ignore
//   @override
//   List<Object?> get props =>
//       [priceInUSD, toSymbol, hight24Hour, imageURL, low24Hour, lastUpdate];
// }

@JsonSerializable(explicitToJson: true)
@Embedded()
class CryptoCoinDetail {
//  extends      {
  @JsonKey(name: 'PRICE')
  final double? priceInUSD;

  @JsonKey(name: 'IMAGEURL')
  final String? imageURL;

  String get fullImageURLPath => 'https://www.cryptocompare.com/$imageURL';

  @JsonKey(name: 'TOSYMBOL')
  final String? toSymbol;

  @JsonKey(name: 'LASTUPDATE', toJson: _dateToJson, fromJson: _dateFromJson)
  final DateTime? lastUpdate;

  @JsonKey(name: 'HIGH24HOUR')
  final double? high24Hour;

  @JsonKey(name: 'LOW24HOUR')
  final double? low24Hour;

  const CryptoCoinDetail({
    this.toSymbol,
    this.lastUpdate,
    this.high24Hour,
    this.low24Hour,
    this.imageURL,
    this.priceInUSD,
  });

  factory CryptoCoinDetail.fromJson(Map<String, dynamic> json) =>
      _$CryptoCoinDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoCoinDetailToJson(this);

  static int? _dateToJson(DateTime? dateTime) =>
      dateTime?.millisecondsSinceEpoch;

  static DateTime? _dateFromJson(int? milliseconds) => milliseconds != null
      ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
      : null;

// //   @ignore
//   @override
//   List<Object?> get props =>
//       [priceInUSD, toSymbol, high24Hour, imageURL, low24Hour, lastUpdate];
}
