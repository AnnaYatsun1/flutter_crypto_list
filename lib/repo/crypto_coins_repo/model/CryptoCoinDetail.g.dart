// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CryptoCoinDetail.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CryptoCoinDetailSchema = Schema(
  name: r'CryptoCoinDetail',
  id: 4593318978832295384,
  properties: {
    r'fullImageURLPath': PropertySchema(
      id: 0,
      name: r'fullImageURLPath',
      type: IsarType.string,
    ),
    r'high24Hour': PropertySchema(
      id: 1,
      name: r'high24Hour',
      type: IsarType.double,
    ),
    r'imageURL': PropertySchema(
      id: 2,
      name: r'imageURL',
      type: IsarType.string,
    ),
    r'lastUpdate': PropertySchema(
      id: 3,
      name: r'lastUpdate',
      type: IsarType.dateTime,
    ),
    r'low24Hour': PropertySchema(
      id: 4,
      name: r'low24Hour',
      type: IsarType.double,
    ),
    r'priceInUSD': PropertySchema(
      id: 5,
      name: r'priceInUSD',
      type: IsarType.double,
    ),
    r'toSymbol': PropertySchema(
      id: 6,
      name: r'toSymbol',
      type: IsarType.string,
    )
  },
  estimateSize: _cryptoCoinDetailEstimateSize,
  serialize: _cryptoCoinDetailSerialize,
  deserialize: _cryptoCoinDetailDeserialize,
  deserializeProp: _cryptoCoinDetailDeserializeProp,
);

int _cryptoCoinDetailEstimateSize(
  CryptoCoinDetail object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.fullImageURLPath.length * 3;
  {
    final value = object.imageURL;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.toSymbol;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _cryptoCoinDetailSerialize(
  CryptoCoinDetail object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.fullImageURLPath);
  writer.writeDouble(offsets[1], object.high24Hour);
  writer.writeString(offsets[2], object.imageURL);
  writer.writeDateTime(offsets[3], object.lastUpdate);
  writer.writeDouble(offsets[4], object.low24Hour);
  writer.writeDouble(offsets[5], object.priceInUSD);
  writer.writeString(offsets[6], object.toSymbol);
}

CryptoCoinDetail _cryptoCoinDetailDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CryptoCoinDetail(
    high24Hour: reader.readDoubleOrNull(offsets[1]),
    imageURL: reader.readStringOrNull(offsets[2]),
    lastUpdate: reader.readDateTimeOrNull(offsets[3]),
    low24Hour: reader.readDoubleOrNull(offsets[4]),
    priceInUSD: reader.readDoubleOrNull(offsets[5]),
    toSymbol: reader.readStringOrNull(offsets[6]),
  );
  return object;
}

P _cryptoCoinDetailDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CryptoCoinDetailQueryFilter
    on QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QFilterCondition> {
  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      fullImageURLPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullImageURLPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      fullImageURLPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullImageURLPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      fullImageURLPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullImageURLPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      fullImageURLPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullImageURLPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      fullImageURLPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullImageURLPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      fullImageURLPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullImageURLPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      fullImageURLPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullImageURLPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      fullImageURLPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullImageURLPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      fullImageURLPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullImageURLPath',
        value: '',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      fullImageURLPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullImageURLPath',
        value: '',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      high24HourIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'high24Hour',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      high24HourIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'high24Hour',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      high24HourEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'high24Hour',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      high24HourGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'high24Hour',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      high24HourLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'high24Hour',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      high24HourBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'high24Hour',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageURL',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageURL',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageURL',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageURL',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageURL',
        value: '',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      imageURLIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageURL',
        value: '',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      lastUpdateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastUpdate',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      lastUpdateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastUpdate',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      lastUpdateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdate',
        value: value,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      lastUpdateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdate',
        value: value,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      lastUpdateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdate',
        value: value,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      lastUpdateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      low24HourIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'low24Hour',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      low24HourIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'low24Hour',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      low24HourEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'low24Hour',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      low24HourGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'low24Hour',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      low24HourLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'low24Hour',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      low24HourBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'low24Hour',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      priceInUSDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceInUSD',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      priceInUSDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceInUSD',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      priceInUSDEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceInUSD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      priceInUSDGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceInUSD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      priceInUSDLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceInUSD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      priceInUSDBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceInUSD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'toSymbol',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'toSymbol',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'toSymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'toSymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'toSymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'toSymbol',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'toSymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'toSymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'toSymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'toSymbol',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'toSymbol',
        value: '',
      ));
    });
  }

  QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QAfterFilterCondition>
      toSymbolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'toSymbol',
        value: '',
      ));
    });
  }
}

extension CryptoCoinDetailQueryObject
    on QueryBuilder<CryptoCoinDetail, CryptoCoinDetail, QFilterCondition> {}

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
