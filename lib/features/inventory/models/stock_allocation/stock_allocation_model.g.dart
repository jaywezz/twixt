// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_allocation_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStockAllocationModelCollection on Isar {
  IsarCollection<StockAllocationModel> get stockAllocationModels =>
      this.collection();
}

const StockAllocationModelSchema = CollectionSchema(
  name: r'StockAllocationModel',
  id: 7349894634164458320,
  properties: {
    r'allocatedQty': PropertySchema(
      id: 0,
      name: r'allocatedQty',
      type: IsarType.string,
    ),
    r'currentStock': PropertySchema(
      id: 1,
      name: r'currentStock',
      type: IsarType.string,
    ),
    r'itemCode': PropertySchema(
      id: 2,
      name: r'itemCode',
      type: IsarType.string,
    ),
    r'price': PropertySchema(
      id: 3,
      name: r'price',
      type: IsarType.string,
    ),
    r'productCategoryId': PropertySchema(
      id: 4,
      name: r'productCategoryId',
      type: IsarType.long,
    ),
    r'productId': PropertySchema(
      id: 5,
      name: r'productId',
      type: IsarType.long,
    ),
    r'productName': PropertySchema(
      id: 6,
      name: r'productName',
      type: IsarType.string,
    )
  },
  estimateSize: _stockAllocationModelEstimateSize,
  serialize: _stockAllocationModelSerialize,
  deserialize: _stockAllocationModelDeserialize,
  deserializeProp: _stockAllocationModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _stockAllocationModelGetId,
  getLinks: _stockAllocationModelGetLinks,
  attach: _stockAllocationModelAttach,
  version: '3.1.0+1',
);

int _stockAllocationModelEstimateSize(
  StockAllocationModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.allocatedQty;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.currentStock;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.price;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.productName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _stockAllocationModelSerialize(
  StockAllocationModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.allocatedQty);
  writer.writeString(offsets[1], object.currentStock);
  writer.writeString(offsets[2], object.itemCode);
  writer.writeString(offsets[3], object.price);
  writer.writeLong(offsets[4], object.productCategoryId);
  writer.writeLong(offsets[5], object.productId);
  writer.writeString(offsets[6], object.productName);
}

StockAllocationModel _stockAllocationModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StockAllocationModel(
    allocatedQty: reader.readStringOrNull(offsets[0]),
    currentStock: reader.readStringOrNull(offsets[1]),
    itemCode: reader.readStringOrNull(offsets[2]),
    price: reader.readStringOrNull(offsets[3]),
    productCategoryId: reader.readLongOrNull(offsets[4]),
    productId: reader.readLongOrNull(offsets[5]),
    productName: reader.readStringOrNull(offsets[6]),
  );
  object.isarId = id;
  return object;
}

P _stockAllocationModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _stockAllocationModelGetId(StockAllocationModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _stockAllocationModelGetLinks(
    StockAllocationModel object) {
  return [];
}

void _stockAllocationModelAttach(
    IsarCollection<dynamic> col, Id id, StockAllocationModel object) {
  object.isarId = id;
}

extension StockAllocationModelQueryWhereSort
    on QueryBuilder<StockAllocationModel, StockAllocationModel, QWhere> {
  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterWhere>
      anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StockAllocationModelQueryWhere
    on QueryBuilder<StockAllocationModel, StockAllocationModel, QWhereClause> {
  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StockAllocationModelQueryFilter on QueryBuilder<StockAllocationModel,
    StockAllocationModel, QFilterCondition> {
  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> allocatedQtyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'allocatedQty',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> allocatedQtyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'allocatedQty',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> allocatedQtyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allocatedQty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> allocatedQtyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'allocatedQty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> allocatedQtyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'allocatedQty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> allocatedQtyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'allocatedQty',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> allocatedQtyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'allocatedQty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> allocatedQtyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'allocatedQty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
          QAfterFilterCondition>
      allocatedQtyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'allocatedQty',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
          QAfterFilterCondition>
      allocatedQtyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'allocatedQty',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> allocatedQtyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allocatedQty',
        value: '',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> allocatedQtyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'allocatedQty',
        value: '',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> currentStockIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentStock',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> currentStockIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentStock',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> currentStockEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentStock',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> currentStockGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentStock',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> currentStockLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentStock',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> currentStockBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentStock',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> currentStockStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currentStock',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> currentStockEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currentStock',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
          QAfterFilterCondition>
      currentStockContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currentStock',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
          QAfterFilterCondition>
      currentStockMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currentStock',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> currentStockIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentStock',
        value: '',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> currentStockIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currentStock',
        value: '',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> itemCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemCode',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> itemCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemCode',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> itemCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> itemCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> itemCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> itemCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> itemCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> itemCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
          QAfterFilterCondition>
      itemCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
          QAfterFilterCondition>
      itemCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> itemCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemCode',
        value: '',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> itemCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemCode',
        value: '',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> priceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'price',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> priceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'price',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> priceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> priceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> priceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> priceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> priceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> priceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
          QAfterFilterCondition>
      priceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
          QAfterFilterCondition>
      priceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'price',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> priceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: '',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> priceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'price',
        value: '',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productCategoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productCategoryId',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productCategoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productCategoryId',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productCategoryIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productCategoryIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productCategoryIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productCategoryIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productCategoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productName',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productName',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
          QAfterFilterCondition>
      productNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
          QAfterFilterCondition>
      productNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productName',
        value: '',
      ));
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel,
      QAfterFilterCondition> productNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productName',
        value: '',
      ));
    });
  }
}

extension StockAllocationModelQueryObject on QueryBuilder<StockAllocationModel,
    StockAllocationModel, QFilterCondition> {}

extension StockAllocationModelQueryLinks on QueryBuilder<StockAllocationModel,
    StockAllocationModel, QFilterCondition> {}

extension StockAllocationModelQuerySortBy
    on QueryBuilder<StockAllocationModel, StockAllocationModel, QSortBy> {
  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByAllocatedQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allocatedQty', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByAllocatedQtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allocatedQty', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByCurrentStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStock', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByCurrentStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStock', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByItemCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCode', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByItemCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCode', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByProductCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productCategoryId', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByProductCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productCategoryId', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByProductName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      sortByProductNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.desc);
    });
  }
}

extension StockAllocationModelQuerySortThenBy
    on QueryBuilder<StockAllocationModel, StockAllocationModel, QSortThenBy> {
  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByAllocatedQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allocatedQty', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByAllocatedQtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allocatedQty', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByCurrentStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStock', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByCurrentStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStock', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByItemCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCode', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByItemCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCode', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByProductCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productCategoryId', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByProductCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productCategoryId', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByProductName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.asc);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QAfterSortBy>
      thenByProductNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.desc);
    });
  }
}

extension StockAllocationModelQueryWhereDistinct
    on QueryBuilder<StockAllocationModel, StockAllocationModel, QDistinct> {
  QueryBuilder<StockAllocationModel, StockAllocationModel, QDistinct>
      distinctByAllocatedQty({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'allocatedQty', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QDistinct>
      distinctByCurrentStock({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentStock', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QDistinct>
      distinctByItemCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QDistinct>
      distinctByPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QDistinct>
      distinctByProductCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productCategoryId');
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QDistinct>
      distinctByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId');
    });
  }

  QueryBuilder<StockAllocationModel, StockAllocationModel, QDistinct>
      distinctByProductName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productName', caseSensitive: caseSensitive);
    });
  }
}

extension StockAllocationModelQueryProperty on QueryBuilder<
    StockAllocationModel, StockAllocationModel, QQueryProperty> {
  QueryBuilder<StockAllocationModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<StockAllocationModel, String?, QQueryOperations>
      allocatedQtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'allocatedQty');
    });
  }

  QueryBuilder<StockAllocationModel, String?, QQueryOperations>
      currentStockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentStock');
    });
  }

  QueryBuilder<StockAllocationModel, String?, QQueryOperations>
      itemCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemCode');
    });
  }

  QueryBuilder<StockAllocationModel, String?, QQueryOperations>
      priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<StockAllocationModel, int?, QQueryOperations>
      productCategoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productCategoryId');
    });
  }

  QueryBuilder<StockAllocationModel, int?, QQueryOperations>
      productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<StockAllocationModel, String?, QQueryOperations>
      productNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productName');
    });
  }
}
