// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CryptoCoinDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoCoinDetail _$CryptoCoinDetailFromJson(Map<String, dynamic> json) =>
    CryptoCoinDetail(
      toSymbol: json['TOSYMBOL'] as String?,
      lastUpdate:
          CryptoCoinDetail._dateFromJson((json['LASTUPDATE'] as num?)?.toInt()),
      high24Hour: (json['HIGH24HOUR'] as num?)?.toDouble(),
      low24Hour: (json['LOW24HOUR'] as num?)?.toDouble(),
      imageURL: json['IMAGEURL'] as String?,
      priceInUSD: (json['PRICE'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CryptoCoinDetailToJson(CryptoCoinDetail instance) =>
    <String, dynamic>{
      'PRICE': instance.priceInUSD,
      'IMAGEURL': instance.imageURL,
      'TOSYMBOL': instance.toSymbol,
      'LASTUPDATE': CryptoCoinDetail._dateToJson(instance.lastUpdate),
      'HIGH24HOUR': instance.high24Hour,
      'LOW24HOUR': instance.low24Hour,
    };
