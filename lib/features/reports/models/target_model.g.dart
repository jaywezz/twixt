// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTargetsModelCollection on Isar {
  IsarCollection<TargetsModel> get targetsModels => this.collection();
}

const TargetsModelSchema = CollectionSchema(
  name: r'TargetsModel',
  id: 7762423416291471989,
  properties: {
    r'prospectDailyAchieved': PropertySchema(
      id: 0,
      name: r'prospectDailyAchieved',
      type: IsarType.string,
    ),
    r'prospectMonthlyAchieved': PropertySchema(
      id: 1,
      name: r'prospectMonthlyAchieved',
      type: IsarType.string,
    ),
    r'prospectWeeklyAchieved': PropertySchema(
      id: 2,
      name: r'prospectWeeklyAchieved',
      type: IsarType.string,
    ),
    r'targetProspect': PropertySchema(
      id: 3,
      name: r'targetProspect',
      type: IsarType.string,
    ),
    r'targetVisit': PropertySchema(
      id: 4,
      name: r'targetVisit',
      type: IsarType.string,
    ),
    r'visitDailyAchieved': PropertySchema(
      id: 5,
      name: r'visitDailyAchieved',
      type: IsarType.string,
    ),
    r'visitMonthlyAchieved': PropertySchema(
      id: 6,
      name: r'visitMonthlyAchieved',
      type: IsarType.string,
    ),
    r'visitWeeklyAchieved': PropertySchema(
      id: 7,
      name: r'visitWeeklyAchieved',
      type: IsarType.string,
    )
  },
  estimateSize: _targetsModelEstimateSize,
  serialize: _targetsModelSerialize,
  deserialize: _targetsModelDeserialize,
  deserializeProp: _targetsModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _targetsModelGetId,
  getLinks: _targetsModelGetLinks,
  attach: _targetsModelAttach,
  version: '3.1.0+1',
);

int _targetsModelEstimateSize(
  TargetsModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.prospectDailyAchieved;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.prospectMonthlyAchieved;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.prospectWeeklyAchieved;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.targetProspect;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.targetVisit;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.visitDailyAchieved;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.visitMonthlyAchieved;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.visitWeeklyAchieved;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _targetsModelSerialize(
  TargetsModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.prospectDailyAchieved);
  writer.writeString(offsets[1], object.prospectMonthlyAchieved);
  writer.writeString(offsets[2], object.prospectWeeklyAchieved);
  writer.writeString(offsets[3], object.targetProspect);
  writer.writeString(offsets[4], object.targetVisit);
  writer.writeString(offsets[5], object.visitDailyAchieved);
  writer.writeString(offsets[6], object.visitMonthlyAchieved);
  writer.writeString(offsets[7], object.visitWeeklyAchieved);
}

TargetsModel _targetsModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TargetsModel(
    prospectDailyAchieved: reader.readStringOrNull(offsets[0]),
    prospectMonthlyAchieved: reader.readStringOrNull(offsets[1]),
    prospectWeeklyAchieved: reader.readStringOrNull(offsets[2]),
    targetProspect: reader.readStringOrNull(offsets[3]),
    targetVisit: reader.readStringOrNull(offsets[4]),
    visitDailyAchieved: reader.readStringOrNull(offsets[5]),
    visitMonthlyAchieved: reader.readStringOrNull(offsets[6]),
    visitWeeklyAchieved: reader.readStringOrNull(offsets[7]),
  );
  object.isarId = id;
  return object;
}

P _targetsModelDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _targetsModelGetId(TargetsModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _targetsModelGetLinks(TargetsModel object) {
  return [];
}

void _targetsModelAttach(
    IsarCollection<dynamic> col, Id id, TargetsModel object) {
  object.isarId = id;
}

extension TargetsModelQueryWhereSort
    on QueryBuilder<TargetsModel, TargetsModel, QWhere> {
  QueryBuilder<TargetsModel, TargetsModel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TargetsModelQueryWhere
    on QueryBuilder<TargetsModel, TargetsModel, QWhereClause> {
  QueryBuilder<TargetsModel, TargetsModel, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
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

  QueryBuilder<TargetsModel, TargetsModel, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterWhereClause> isarIdBetween(
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

extension TargetsModelQueryFilter
    on QueryBuilder<TargetsModel, TargetsModel, QFilterCondition> {
  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      isarIdGreaterThan(
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

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      isarIdLessThan(
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

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prospectDailyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prospectDailyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prospectDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prospectDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prospectDailyAchieved',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prospectDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prospectDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prospectDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prospectDailyAchieved',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectDailyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectDailyAchievedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prospectDailyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prospectMonthlyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prospectMonthlyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prospectMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prospectMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prospectMonthlyAchieved',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prospectMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prospectMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prospectMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prospectMonthlyAchieved',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectMonthlyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectMonthlyAchievedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prospectMonthlyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prospectWeeklyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prospectWeeklyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prospectWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prospectWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prospectWeeklyAchieved',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prospectWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prospectWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prospectWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prospectWeeklyAchieved',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectWeeklyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      prospectWeeklyAchievedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prospectWeeklyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'targetProspect',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'targetProspect',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetProspect',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'targetProspect',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'targetProspect',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'targetProspect',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'targetProspect',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'targetProspect',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'targetProspect',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'targetProspect',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetProspect',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetProspectIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'targetProspect',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'targetVisit',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'targetVisit',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetVisit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'targetVisit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'targetVisit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'targetVisit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'targetVisit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'targetVisit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'targetVisit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'targetVisit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetVisit',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      targetVisitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'targetVisit',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visitDailyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visitDailyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visitDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visitDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visitDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visitDailyAchieved',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'visitDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'visitDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'visitDailyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'visitDailyAchieved',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visitDailyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitDailyAchievedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'visitDailyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visitMonthlyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visitMonthlyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visitMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visitMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visitMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visitMonthlyAchieved',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'visitMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'visitMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'visitMonthlyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'visitMonthlyAchieved',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visitMonthlyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitMonthlyAchievedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'visitMonthlyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visitWeeklyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visitWeeklyAchieved',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visitWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visitWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visitWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visitWeeklyAchieved',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'visitWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'visitWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'visitWeeklyAchieved',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'visitWeeklyAchieved',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visitWeeklyAchieved',
        value: '',
      ));
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterFilterCondition>
      visitWeeklyAchievedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'visitWeeklyAchieved',
        value: '',
      ));
    });
  }
}

extension TargetsModelQueryObject
    on QueryBuilder<TargetsModel, TargetsModel, QFilterCondition> {}

extension TargetsModelQueryLinks
    on QueryBuilder<TargetsModel, TargetsModel, QFilterCondition> {}

extension TargetsModelQuerySortBy
    on QueryBuilder<TargetsModel, TargetsModel, QSortBy> {
  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByProspectDailyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectDailyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByProspectDailyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectDailyAchieved', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByProspectMonthlyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectMonthlyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByProspectMonthlyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectMonthlyAchieved', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByProspectWeeklyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectWeeklyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByProspectWeeklyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectWeeklyAchieved', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByTargetProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetProspect', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByTargetProspectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetProspect', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy> sortByTargetVisit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetVisit', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByTargetVisitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetVisit', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByVisitDailyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitDailyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByVisitDailyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitDailyAchieved', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByVisitMonthlyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitMonthlyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByVisitMonthlyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitMonthlyAchieved', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByVisitWeeklyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitWeeklyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      sortByVisitWeeklyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitWeeklyAchieved', Sort.desc);
    });
  }
}

extension TargetsModelQuerySortThenBy
    on QueryBuilder<TargetsModel, TargetsModel, QSortThenBy> {
  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByProspectDailyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectDailyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByProspectDailyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectDailyAchieved', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByProspectMonthlyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectMonthlyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByProspectMonthlyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectMonthlyAchieved', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByProspectWeeklyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectWeeklyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByProspectWeeklyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectWeeklyAchieved', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByTargetProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetProspect', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByTargetProspectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetProspect', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy> thenByTargetVisit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetVisit', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByTargetVisitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetVisit', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByVisitDailyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitDailyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByVisitDailyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitDailyAchieved', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByVisitMonthlyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitMonthlyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByVisitMonthlyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitMonthlyAchieved', Sort.desc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByVisitWeeklyAchieved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitWeeklyAchieved', Sort.asc);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QAfterSortBy>
      thenByVisitWeeklyAchievedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visitWeeklyAchieved', Sort.desc);
    });
  }
}

extension TargetsModelQueryWhereDistinct
    on QueryBuilder<TargetsModel, TargetsModel, QDistinct> {
  QueryBuilder<TargetsModel, TargetsModel, QDistinct>
      distinctByProspectDailyAchieved({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prospectDailyAchieved',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QDistinct>
      distinctByProspectMonthlyAchieved({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prospectMonthlyAchieved',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QDistinct>
      distinctByProspectWeeklyAchieved({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prospectWeeklyAchieved',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QDistinct> distinctByTargetProspect(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'targetProspect',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QDistinct> distinctByTargetVisit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'targetVisit', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QDistinct>
      distinctByVisitDailyAchieved({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visitDailyAchieved',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QDistinct>
      distinctByVisitMonthlyAchieved({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visitMonthlyAchieved',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TargetsModel, TargetsModel, QDistinct>
      distinctByVisitWeeklyAchieved({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visitWeeklyAchieved',
          caseSensitive: caseSensitive);
    });
  }
}

extension TargetsModelQueryProperty
    on QueryBuilder<TargetsModel, TargetsModel, QQueryProperty> {
  QueryBuilder<TargetsModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<TargetsModel, String?, QQueryOperations>
      prospectDailyAchievedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prospectDailyAchieved');
    });
  }

  QueryBuilder<TargetsModel, String?, QQueryOperations>
      prospectMonthlyAchievedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prospectMonthlyAchieved');
    });
  }

  QueryBuilder<TargetsModel, String?, QQueryOperations>
      prospectWeeklyAchievedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prospectWeeklyAchieved');
    });
  }

  QueryBuilder<TargetsModel, String?, QQueryOperations>
      targetProspectProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'targetProspect');
    });
  }

  QueryBuilder<TargetsModel, String?, QQueryOperations> targetVisitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'targetVisit');
    });
  }

  QueryBuilder<TargetsModel, String?, QQueryOperations>
      visitDailyAchievedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visitDailyAchieved');
    });
  }

  QueryBuilder<TargetsModel, String?, QQueryOperations>
      visitMonthlyAchievedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visitMonthlyAchieved');
    });
  }

  QueryBuilder<TargetsModel, String?, QQueryOperations>
      visitWeeklyAchievedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visitWeeklyAchieved');
    });
  }
}
