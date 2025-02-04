import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/model/CryptoCoinDetail.dart';

// part 'crypto_coin.g.dart';

// @collection
// class CryptoCoin {
// // extends Equatable {
//   Id id = Isar.autoIncrement;
//   final String name;
//   final CryptoCoinDetail details;

//   CryptoCoin({required this.name, required this.details});

//   // @JsonKey(ignore: true)
//   // @override
//   // List<Object?> get props => [name, details];
// }

import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crypto_coin.g.dart'; // ✅ Должно быть на отдельной строке

@collection // ✅ Должно идти после `part`
class CryptoCoin {
  Id id = Isar.autoIncrement;
  final String name;
  final CryptoCoinDetail details;

  CryptoCoin({required this.name, required this.details});
}
