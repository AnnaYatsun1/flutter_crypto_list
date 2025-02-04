// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_coin.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCryptoCoinCollection on Isar {
  IsarCollection<CryptoCoin> get cryptoCoins => this.collection();
}

const CryptoCoinSchema = CollectionSchema(
  name: r'CryptoCoin',
  id: 921270626437369420,
  properties: {
    r'details': PropertySchema(
      id: 0,
      name: r'details',
      type: IsarType.object,
      target: r'CryptoCoinDetail',
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _cryptoCoinEstimateSize,
  serialize: _cryptoCoinSerialize,
  deserialize: _cryptoCoinDeserialize,
  deserializeProp: _cryptoCoinDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'CryptoCoinDetail': CryptoCoinDetailSchema},
  getId: _cryptoCoinGetId,
  getLinks: _cryptoCoinGetLinks,
  attach: _cryptoCoinAttach,
  version: '3.1.0+1',
);

int _cryptoCoinEstimateSize(
  CryptoCoin object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      CryptoCoinDetailSchema.estimateSize(
          object.details, allOffsets[CryptoCoinDetail]!, allOffsets);
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _cryptoCoinSerialize(
  CryptoCoin object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<CryptoCoinDetail>(
    offsets[0],
    allOffsets,
    CryptoCoinDetailSchema.serialize,
    object.details,
  );
  writer.writeString(offsets[1], object.name);
}

CryptoCoin _cryptoCoinDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CryptoCoin(
    details: reader.readObjectOrNull<CryptoCoinDetail>(
          offsets[0],
          CryptoCoinDetailSchema.deserialize,
          allOffsets,
        ) ??
        CryptoCoinDetail(),
    name: reader.readString(offsets[1]),
  );
  object.id = id;
  return object;
}

P _cryptoCoinDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<CryptoCoinDetail>(
            offset,
            CryptoCoinDetailSchema.deserialize,
            allOffsets,
          ) ??
          CryptoCoinDetail()) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cryptoCoinGetId(CryptoCoin object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cryptoCoinGetLinks(CryptoCoin object) {
  return [];
}

void _cryptoCoinAttach(IsarCollection<dynamic> col, Id id, CryptoCoin object) {
  object.id = id;
}

extension CryptoCoinQueryWhereSort
    on QueryBuilder<CryptoCoin, CryptoCoin, QWhere> {
  QueryBuilder<CryptoCoin, CryptoCoin, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CryptoCoinQueryWhere
    on QueryBuilder<CryptoCoin, CryptoCoin, QWhereClause> {
  QueryBuilder<CryptoCoin, CryptoCoin, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CryptoCoinQueryFilter
    on QueryBuilder<CryptoCoin, CryptoCoin, QFilterCondition> {
  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension CryptoCoinQueryObject
    on QueryBuilder<CryptoCoin, CryptoCoin, QFilterCondition> {
  QueryBuilder<CryptoCoin, CryptoCoin, QAfterFilterCondition> details(
      FilterQuery<CryptoCoinDetail> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'details');
    });
  }
}

extension CryptoCoinQueryLinks
    on QueryBuilder<CryptoCoin, CryptoCoin, QFilterCondition> {}

extension CryptoCoinQuerySortBy
    on QueryBuilder<CryptoCoin, CryptoCoin, QSortBy> {
  QueryBuilder<CryptoCoin, CryptoCoin, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CryptoCoinQuerySortThenBy
    on QueryBuilder<CryptoCoin, CryptoCoin, QSortThenBy> {
  QueryBuilder<CryptoCoin, CryptoCoin, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoin, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CryptoCoinQueryWhereDistinct
    on QueryBuilder<CryptoCoin, CryptoCoin, QDistinct> {
  QueryBuilder<CryptoCoin, CryptoCoin, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension CryptoCoinQueryProperty
    on QueryBuilder<CryptoCoin, CryptoCoin, QQueryProperty> {
  QueryBuilder<CryptoCoin, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CryptoCoin, CryptoCoinDetail, QQueryOperations>
      detailsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'details');
    });
  }

  QueryBuilder<CryptoCoin, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
