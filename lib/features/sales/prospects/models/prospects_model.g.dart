// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prospects_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProspectsModelCollection on Isar {
  IsarCollection<ProspectsModel> get prospectsModels => this.collection();
}

const ProspectsModelSchema = CollectionSchema(
  name: r'ProspectsModel',
  id: 1763535045419847760,
  properties: {
    r'account': PropertySchema(
      id: 0,
      name: r'account',
      type: IsarType.string,
    ),
    r'action': PropertySchema(
      id: 1,
      name: r'action',
      type: IsarType.string,
    ),
    r'address': PropertySchema(
      id: 2,
      name: r'address',
      type: IsarType.string,
    ),
    r'approval': PropertySchema(
      id: 3,
      name: r'approval',
      type: IsarType.string,
    ),
    r'approvalProspectStatus': PropertySchema(
      id: 4,
      name: r'approvalProspectStatus',
      type: IsarType.string,
    ),
    r'branch': PropertySchema(
      id: 5,
      name: r'branch',
      type: IsarType.string,
    ),
    r'businessCode': PropertySchema(
      id: 6,
      name: r'businessCode',
      type: IsarType.string,
    ),
    r'city': PropertySchema(
      id: 7,
      name: r'city',
      type: IsarType.string,
    ),
    r'contactPerson': PropertySchema(
      id: 8,
      name: r'contactPerson',
      type: IsarType.string,
    ),
    r'country': PropertySchema(
      id: 9,
      name: r'country',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 10,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'createdBy': PropertySchema(
      id: 11,
      name: r'createdBy',
      type: IsarType.string,
    ),
    r'customerGroup': PropertySchema(
      id: 12,
      name: r'customerGroup',
      type: IsarType.string,
    ),
    r'customerGroupId': PropertySchema(
      id: 13,
      name: r'customerGroupId',
      type: IsarType.long,
    ),
    r'customerName': PropertySchema(
      id: 14,
      name: r'customerName',
      type: IsarType.string,
    ),
    r'customerSecondaryGroup': PropertySchema(
      id: 15,
      name: r'customerSecondaryGroup',
      type: IsarType.string,
    ),
    r'customerType': PropertySchema(
      id: 16,
      name: r'customerType',
      type: IsarType.string,
    ),
    r'deliveryTime': PropertySchema(
      id: 17,
      name: r'deliveryTime',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 18,
      name: r'email',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 19,
      name: r'id',
      type: IsarType.long,
    ),
    r'idNumber': PropertySchema(
      id: 20,
      name: r'idNumber',
      type: IsarType.string,
    ),
    r'image': PropertySchema(
      id: 21,
      name: r'image',
      type: IsarType.string,
    ),
    r'institutionName': PropertySchema(
      id: 22,
      name: r'institutionName',
      type: IsarType.string,
    ),
    r'isCold': PropertySchema(
      id: 23,
      name: r'isCold',
      type: IsarType.long,
    ),
    r'isProspect': PropertySchema(
      id: 24,
      name: r'isProspect',
      type: IsarType.long,
    ),
    r'kraPin': PropertySchema(
      id: 25,
      name: r'kraPin',
      type: IsarType.string,
    ),
    r'latitude': PropertySchema(
      id: 26,
      name: r'latitude',
      type: IsarType.string,
    ),
    r'leadSource': PropertySchema(
      id: 27,
      name: r'leadSource',
      type: IsarType.string,
    ),
    r'leadType': PropertySchema(
      id: 28,
      name: r'leadType',
      type: IsarType.string,
    ),
    r'longitude': PropertySchema(
      id: 29,
      name: r'longitude',
      type: IsarType.string,
    ),
    r'manufacturerNumber': PropertySchema(
      id: 30,
      name: r'manufacturerNumber',
      type: IsarType.string,
    ),
    r'offline': PropertySchema(
      id: 31,
      name: r'offline',
      type: IsarType.bool,
    ),
    r'phoneNumber': PropertySchema(
      id: 32,
      name: r'phoneNumber',
      type: IsarType.string,
    ),
    r'postalCode': PropertySchema(
      id: 33,
      name: r'postalCode',
      type: IsarType.string,
    ),
    r'priceGroup': PropertySchema(
      id: 34,
      name: r'priceGroup',
      type: IsarType.string,
    ),
    r'productGroup': PropertySchema(
      id: 35,
      name: r'productGroup',
      type: IsarType.string,
    ),
    r'productId': PropertySchema(
      id: 36,
      name: r'productId',
      type: IsarType.long,
    ),
    r'productTypeId': PropertySchema(
      id: 37,
      name: r'productTypeId',
      type: IsarType.string,
    ),
    r'prospectStatus': PropertySchema(
      id: 38,
      name: r'prospectStatus',
      type: IsarType.string,
    ),
    r'province': PropertySchema(
      id: 39,
      name: r'province',
      type: IsarType.string,
    ),
    r'quantityId': PropertySchema(
      id: 40,
      name: r'quantityId',
      type: IsarType.string,
    ),
    r'reasonIsCold': PropertySchema(
      id: 41,
      name: r'reasonIsCold',
      type: IsarType.string,
    ),
    r'regionId': PropertySchema(
      id: 42,
      name: r'regionId',
      type: IsarType.long,
    ),
    r'route': PropertySchema(
      id: 43,
      name: r'route',
      type: IsarType.string,
    ),
    r'routeCode': PropertySchema(
      id: 44,
      name: r'routeCode',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 45,
      name: r'status',
      type: IsarType.string,
    ),
    r'subregionId': PropertySchema(
      id: 46,
      name: r'subregionId',
      type: IsarType.long,
    ),
    r'telephone': PropertySchema(
      id: 47,
      name: r'telephone',
      type: IsarType.string,
    ),
    r'unitId': PropertySchema(
      id: 48,
      name: r'unitId',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 49,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'updatedBy': PropertySchema(
      id: 50,
      name: r'updatedBy',
      type: IsarType.string,
    ),
    r'userCode': PropertySchema(
      id: 51,
      name: r'userCode',
      type: IsarType.string,
    ),
    r'vatNumber': PropertySchema(
      id: 52,
      name: r'vatNumber',
      type: IsarType.string,
    ),
    r'zoneId': PropertySchema(
      id: 53,
      name: r'zoneId',
      type: IsarType.string,
    )
  },
  estimateSize: _prospectsModelEstimateSize,
  serialize: _prospectsModelSerialize,
  deserialize: _prospectsModelDeserialize,
  deserializeProp: _prospectsModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _prospectsModelGetId,
  getLinks: _prospectsModelGetLinks,
  attach: _prospectsModelAttach,
  version: '3.1.0+1',
);

int _prospectsModelEstimateSize(
  ProspectsModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.account;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.action;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.address;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.approval;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.approvalProspectStatus;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.branch;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.businessCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.city;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.contactPerson;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.createdBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerSecondaryGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.deliveryTime;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.institutionName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kraPin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.latitude;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.leadSource;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.leadType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.longitude;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.manufacturerNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phoneNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.postalCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.priceGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.productGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.productTypeId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.prospectStatus;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.province;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.quantityId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.reasonIsCold;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.route;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.routeCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.telephone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.updatedBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.userCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.vatNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.zoneId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _prospectsModelSerialize(
  ProspectsModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.account);
  writer.writeString(offsets[1], object.action);
  writer.writeString(offsets[2], object.address);
  writer.writeString(offsets[3], object.approval);
  writer.writeString(offsets[4], object.approvalProspectStatus);
  writer.writeString(offsets[5], object.branch);
  writer.writeString(offsets[6], object.businessCode);
  writer.writeString(offsets[7], object.city);
  writer.writeString(offsets[8], object.contactPerson);
  writer.writeString(offsets[9], object.country);
  writer.writeDateTime(offsets[10], object.createdAt);
  writer.writeString(offsets[11], object.createdBy);
  writer.writeString(offsets[12], object.customerGroup);
  writer.writeLong(offsets[13], object.customerGroupId);
  writer.writeString(offsets[14], object.customerName);
  writer.writeString(offsets[15], object.customerSecondaryGroup);
  writer.writeString(offsets[16], object.customerType);
  writer.writeString(offsets[17], object.deliveryTime);
  writer.writeString(offsets[18], object.email);
  writer.writeLong(offsets[19], object.id);
  writer.writeString(offsets[20], object.idNumber);
  writer.writeString(offsets[21], object.image);
  writer.writeString(offsets[22], object.institutionName);
  writer.writeLong(offsets[23], object.isCold);
  writer.writeLong(offsets[24], object.isProspect);
  writer.writeString(offsets[25], object.kraPin);
  writer.writeString(offsets[26], object.latitude);
  writer.writeString(offsets[27], object.leadSource);
  writer.writeString(offsets[28], object.leadType);
  writer.writeString(offsets[29], object.longitude);
  writer.writeString(offsets[30], object.manufacturerNumber);
  writer.writeBool(offsets[31], object.offline);
  writer.writeString(offsets[32], object.phoneNumber);
  writer.writeString(offsets[33], object.postalCode);
  writer.writeString(offsets[34], object.priceGroup);
  writer.writeString(offsets[35], object.productGroup);
  writer.writeLong(offsets[36], object.productId);
  writer.writeString(offsets[37], object.productTypeId);
  writer.writeString(offsets[38], object.prospectStatus);
  writer.writeString(offsets[39], object.province);
  writer.writeString(offsets[40], object.quantityId);
  writer.writeString(offsets[41], object.reasonIsCold);
  writer.writeLong(offsets[42], object.regionId);
  writer.writeString(offsets[43], object.route);
  writer.writeString(offsets[44], object.routeCode);
  writer.writeString(offsets[45], object.status);
  writer.writeLong(offsets[46], object.subregionId);
  writer.writeString(offsets[47], object.telephone);
  writer.writeLong(offsets[48], object.unitId);
  writer.writeDateTime(offsets[49], object.updatedAt);
  writer.writeString(offsets[50], object.updatedBy);
  writer.writeString(offsets[51], object.userCode);
  writer.writeString(offsets[52], object.vatNumber);
  writer.writeString(offsets[53], object.zoneId);
}

ProspectsModel _prospectsModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProspectsModel(
    account: reader.readStringOrNull(offsets[0]),
    action: reader.readStringOrNull(offsets[1]),
    address: reader.readStringOrNull(offsets[2]),
    approval: reader.readStringOrNull(offsets[3]),
    approvalProspectStatus: reader.readStringOrNull(offsets[4]),
    branch: reader.readStringOrNull(offsets[5]),
    businessCode: reader.readStringOrNull(offsets[6]),
    city: reader.readStringOrNull(offsets[7]),
    contactPerson: reader.readStringOrNull(offsets[8]),
    country: reader.readStringOrNull(offsets[9]),
    createdAt: reader.readDateTimeOrNull(offsets[10]),
    createdBy: reader.readStringOrNull(offsets[11]),
    customerGroup: reader.readStringOrNull(offsets[12]),
    customerGroupId: reader.readLongOrNull(offsets[13]),
    customerName: reader.readStringOrNull(offsets[14]),
    customerSecondaryGroup: reader.readStringOrNull(offsets[15]),
    customerType: reader.readStringOrNull(offsets[16]),
    deliveryTime: reader.readStringOrNull(offsets[17]),
    email: reader.readStringOrNull(offsets[18]),
    id: reader.readLongOrNull(offsets[19]),
    idNumber: reader.readStringOrNull(offsets[20]),
    image: reader.readStringOrNull(offsets[21]),
    institutionName: reader.readStringOrNull(offsets[22]),
    isCold: reader.readLongOrNull(offsets[23]),
    isProspect: reader.readLongOrNull(offsets[24]),
    kraPin: reader.readStringOrNull(offsets[25]),
    latitude: reader.readStringOrNull(offsets[26]),
    leadSource: reader.readStringOrNull(offsets[27]),
    leadType: reader.readStringOrNull(offsets[28]),
    longitude: reader.readStringOrNull(offsets[29]),
    manufacturerNumber: reader.readStringOrNull(offsets[30]),
    offline: reader.readBoolOrNull(offsets[31]) ?? false,
    phoneNumber: reader.readStringOrNull(offsets[32]),
    postalCode: reader.readStringOrNull(offsets[33]),
    priceGroup: reader.readStringOrNull(offsets[34]),
    productGroup: reader.readStringOrNull(offsets[35]),
    productId: reader.readLongOrNull(offsets[36]),
    productTypeId: reader.readStringOrNull(offsets[37]),
    prospectStatus: reader.readStringOrNull(offsets[38]),
    province: reader.readStringOrNull(offsets[39]),
    quantityId: reader.readStringOrNull(offsets[40]),
    reasonIsCold: reader.readStringOrNull(offsets[41]),
    regionId: reader.readLongOrNull(offsets[42]),
    route: reader.readStringOrNull(offsets[43]),
    routeCode: reader.readStringOrNull(offsets[44]),
    status: reader.readStringOrNull(offsets[45]),
    subregionId: reader.readLongOrNull(offsets[46]),
    telephone: reader.readStringOrNull(offsets[47]),
    unitId: reader.readLongOrNull(offsets[48]),
    updatedAt: reader.readDateTimeOrNull(offsets[49]),
    updatedBy: reader.readStringOrNull(offsets[50]),
    userCode: reader.readStringOrNull(offsets[51]),
    vatNumber: reader.readStringOrNull(offsets[52]),
    zoneId: reader.readStringOrNull(offsets[53]),
  );
  object.isarId = id;
  return object;
}

P _prospectsModelDeserializeProp<P>(
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
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readLongOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readLongOrNull(offset)) as P;
    case 24:
      return (reader.readLongOrNull(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readStringOrNull(offset)) as P;
    case 35:
      return (reader.readStringOrNull(offset)) as P;
    case 36:
      return (reader.readLongOrNull(offset)) as P;
    case 37:
      return (reader.readStringOrNull(offset)) as P;
    case 38:
      return (reader.readStringOrNull(offset)) as P;
    case 39:
      return (reader.readStringOrNull(offset)) as P;
    case 40:
      return (reader.readStringOrNull(offset)) as P;
    case 41:
      return (reader.readStringOrNull(offset)) as P;
    case 42:
      return (reader.readLongOrNull(offset)) as P;
    case 43:
      return (reader.readStringOrNull(offset)) as P;
    case 44:
      return (reader.readStringOrNull(offset)) as P;
    case 45:
      return (reader.readStringOrNull(offset)) as P;
    case 46:
      return (reader.readLongOrNull(offset)) as P;
    case 47:
      return (reader.readStringOrNull(offset)) as P;
    case 48:
      return (reader.readLongOrNull(offset)) as P;
    case 49:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 50:
      return (reader.readStringOrNull(offset)) as P;
    case 51:
      return (reader.readStringOrNull(offset)) as P;
    case 52:
      return (reader.readStringOrNull(offset)) as P;
    case 53:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _prospectsModelGetId(ProspectsModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _prospectsModelGetLinks(ProspectsModel object) {
  return [];
}

void _prospectsModelAttach(
    IsarCollection<dynamic> col, Id id, ProspectsModel object) {
  object.isarId = id;
}

extension ProspectsModelQueryWhereSort
    on QueryBuilder<ProspectsModel, ProspectsModel, QWhere> {
  QueryBuilder<ProspectsModel, ProspectsModel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProspectsModelQueryWhere
    on QueryBuilder<ProspectsModel, ProspectsModel, QWhereClause> {
  QueryBuilder<ProspectsModel, ProspectsModel, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterWhereClause>
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

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterWhereClause> isarIdBetween(
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

extension ProspectsModelQueryFilter
    on QueryBuilder<ProspectsModel, ProspectsModel, QFilterCondition> {
  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'account',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'account',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'account',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'account',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'account',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      accountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'account',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'action',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'action',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      actionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'approval',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'approval',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'approval',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'approval',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approval',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'approval',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'approvalProspectStatus',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'approvalProspectStatus',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'approvalProspectStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'approvalProspectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'approvalProspectStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approvalProspectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      approvalProspectStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'approvalProspectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'branch',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'branch',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'branch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'branch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'branch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'branch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'branch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'branch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'branch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'branch',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'branch',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      branchIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'branch',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'businessCode',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'businessCode',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'businessCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'businessCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      businessCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'businessCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'city',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'city',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      cityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactPerson',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactPerson',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contactPerson',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contactPerson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactPerson',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      contactPersonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contactPerson',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdBy',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdBy',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      createdByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerGroup',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerGroup',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerGroupId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerGroupId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerGroupIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerSecondaryGroup',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerSecondaryGroup',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerSecondaryGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerSecondaryGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerSecondaryGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerSecondaryGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerSecondaryGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerSecondaryGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerSecondaryGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerSecondaryGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerSecondaryGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerSecondaryGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerSecondaryGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerType',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerType',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerType',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      customerTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerType',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deliveryTime',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deliveryTime',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deliveryTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deliveryTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deliveryTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deliveryTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deliveryTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deliveryTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deliveryTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deliveryTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deliveryTime',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      deliveryTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deliveryTime',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
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

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idLessThan(
    int? value, {
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

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idNumber',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idNumber',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      idNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'institutionName',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'institutionName',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'institutionName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'institutionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'institutionName',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      institutionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'institutionName',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isColdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isCold',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isColdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isCold',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isColdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCold',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isColdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isCold',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isColdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isCold',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isColdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isCold',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isProspectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isProspect',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isProspectIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isProspect',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isProspectEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isProspect',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isProspectGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isProspect',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isProspectLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isProspect',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isProspectBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isProspect',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
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

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
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

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      isarIdBetween(
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

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kraPin',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kraPin',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kraPin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kraPin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kraPin',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      kraPinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kraPin',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'latitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      latitudeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'latitude',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leadSource',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leadSource',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadSource',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leadSource',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadSource',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadSourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leadSource',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leadType',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leadType',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leadType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadType',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      leadTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leadType',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'longitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      longitudeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'longitude',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'manufacturerNumber',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'manufacturerNumber',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'manufacturerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'manufacturerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'manufacturerNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'manufacturerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'manufacturerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'manufacturerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'manufacturerNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturerNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      manufacturerNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'manufacturerNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      offlineEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'offline',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'postalCode',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'postalCode',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'postalCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'postalCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postalCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      postalCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'postalCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceGroup',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceGroup',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'priceGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      priceGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'priceGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productGroup',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productGroup',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productIdGreaterThan(
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

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productIdLessThan(
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

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productIdBetween(
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

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productTypeId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productTypeId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productTypeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productTypeId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productTypeId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      productTypeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productTypeId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prospectStatus',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prospectStatus',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prospectStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prospectStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      prospectStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prospectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'province',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'province',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'province',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'province',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'province',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'province',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'province',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'province',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'province',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'province',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'province',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      provinceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'province',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantityId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantityId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantityId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quantityId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantityId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      quantityIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quantityId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reasonIsCold',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reasonIsCold',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reasonIsCold',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reasonIsCold',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reasonIsCold',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      reasonIsColdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reasonIsCold',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      regionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'regionId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      regionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'regionId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      regionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      regionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'regionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      regionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'regionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      regionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'regionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'route',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'route',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'route',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'route',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'route',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'route',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'routeCode',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'routeCode',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'routeCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'routeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'routeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      routeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'routeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      subregionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subregionId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      subregionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subregionId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      subregionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subregionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      subregionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subregionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      subregionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subregionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      subregionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subregionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'telephone',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'telephone',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'telephone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'telephone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telephone',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      telephoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'telephone',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      unitIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unitId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      unitIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unitId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      unitIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      unitIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      unitIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      unitIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedBy',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedBy',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updatedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      updatedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updatedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userCode',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userCode',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      userCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vatNumber',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vatNumber',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vatNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'vatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'vatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vatNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vatNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      vatNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vatNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'zoneId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'zoneId',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zoneId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'zoneId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'zoneId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'zoneId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'zoneId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'zoneId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'zoneId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'zoneId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zoneId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterFilterCondition>
      zoneIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'zoneId',
        value: '',
      ));
    });
  }
}

extension ProspectsModelQueryObject
    on QueryBuilder<ProspectsModel, ProspectsModel, QFilterCondition> {}

extension ProspectsModelQueryLinks
    on QueryBuilder<ProspectsModel, ProspectsModel, QFilterCondition> {}

extension ProspectsModelQuerySortBy
    on QueryBuilder<ProspectsModel, ProspectsModel, QSortBy> {
  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByApproval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByApprovalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByApprovalProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByApprovalProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByBranch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branch', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByBranchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branch', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByBusinessCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByBusinessCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByContactPerson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByContactPersonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByCreatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCreatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCustomerGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCustomerGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCustomerGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCustomerGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCustomerSecondaryGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSecondaryGroup', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCustomerSecondaryGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSecondaryGroup', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCustomerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByCustomerTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByDeliveryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTime', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByDeliveryTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTime', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByIdNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByIdNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByInstitutionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByInstitutionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByIsProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByIsProspectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByKraPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByKraPinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByLeadSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByLeadSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByLeadType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByLeadTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByManufacturerNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturerNumber', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByManufacturerNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturerNumber', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offline', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByOfflineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offline', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByPostalCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByPostalCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByPriceGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByPriceGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByProductGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByProductGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByProductTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByProductTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByProvince() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'province', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByProvinceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'province', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByQuantityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByQuantityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByReasonIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByReasonIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByRegionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByRouteCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByRouteCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortBySubregionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortBySubregionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByTelephone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByTelephoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByUnitId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByUnitIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByUpdatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByUpdatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByUserCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByUserCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByVatNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vatNumber', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByVatNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vatNumber', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> sortByZoneId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zoneId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      sortByZoneIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zoneId', Sort.desc);
    });
  }
}

extension ProspectsModelQuerySortThenBy
    on QueryBuilder<ProspectsModel, ProspectsModel, QSortThenBy> {
  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByApproval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByApprovalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByApprovalProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByApprovalProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByBranch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branch', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByBranchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branch', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByBusinessCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByBusinessCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByContactPerson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByContactPersonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByCreatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCreatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCustomerGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCustomerGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCustomerGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCustomerGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCustomerSecondaryGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSecondaryGroup', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCustomerSecondaryGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSecondaryGroup', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCustomerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByCustomerTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByDeliveryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTime', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByDeliveryTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTime', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByIdNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByIdNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByInstitutionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByInstitutionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByIsProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByIsProspectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByKraPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByKraPinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByLeadSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByLeadSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByLeadType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByLeadTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByManufacturerNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturerNumber', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByManufacturerNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturerNumber', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offline', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByOfflineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offline', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByPostalCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByPostalCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByPriceGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByPriceGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByProductGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByProductGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByProductTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByProductTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByProvince() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'province', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByProvinceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'province', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByQuantityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByQuantityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByReasonIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByReasonIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByRegionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByRouteCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByRouteCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenBySubregionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenBySubregionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByTelephone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByTelephoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByUnitId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByUnitIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitId', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByUpdatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByUpdatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByUserCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByUserCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByVatNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vatNumber', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByVatNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vatNumber', Sort.desc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy> thenByZoneId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zoneId', Sort.asc);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QAfterSortBy>
      thenByZoneIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zoneId', Sort.desc);
    });
  }
}

extension ProspectsModelQueryWhereDistinct
    on QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> {
  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByAccount(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'account', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByAction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'action', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByApproval(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'approval', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByApprovalProspectStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'approvalProspectStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByBranch(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'branch', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByBusinessCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'businessCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByCity(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'city', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByContactPerson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contactPerson',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByCountry(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByCreatedBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByCustomerGroup({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerGroup',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByCustomerGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerGroupId');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByCustomerName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByCustomerSecondaryGroup({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerSecondaryGroup',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByCustomerType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByDeliveryTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deliveryTime', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByIdNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByInstitutionName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'institutionName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCold');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByIsProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isProspect');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByKraPin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kraPin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByLatitude(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByLeadSource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadSource', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByLeadType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByLongitude(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByManufacturerNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'manufacturerNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'offline');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByPostalCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postalCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByPriceGroup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceGroup', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByProductGroup({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productGroup', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByProductTypeId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productTypeId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByProspectStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prospectStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByProvince(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'province', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByQuantityId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantityId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByReasonIsCold({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reasonIsCold', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'regionId');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByRoute(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'route', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByRouteCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'routeCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctBySubregionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subregionId');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByTelephone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'telephone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByUnitId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitId');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByUpdatedBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByUserCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByVatNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vatNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProspectsModel, ProspectsModel, QDistinct> distinctByZoneId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'zoneId', caseSensitive: caseSensitive);
    });
  }
}

extension ProspectsModelQueryProperty
    on QueryBuilder<ProspectsModel, ProspectsModel, QQueryProperty> {
  QueryBuilder<ProspectsModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> accountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'account');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'action');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> approvalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'approval');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      approvalProspectStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'approvalProspectStatus');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> branchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'branch');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      businessCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'businessCode');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> cityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'city');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      contactPersonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contactPerson');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> countryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country');
    });
  }

  QueryBuilder<ProspectsModel, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> createdByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdBy');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      customerGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerGroup');
    });
  }

  QueryBuilder<ProspectsModel, int?, QQueryOperations>
      customerGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerGroupId');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      customerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerName');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      customerSecondaryGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerSecondaryGroup');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      customerTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerType');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      deliveryTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deliveryTime');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<ProspectsModel, int?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> idNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idNumber');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      institutionNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'institutionName');
    });
  }

  QueryBuilder<ProspectsModel, int?, QQueryOperations> isColdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCold');
    });
  }

  QueryBuilder<ProspectsModel, int?, QQueryOperations> isProspectProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isProspect');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> kraPinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kraPin');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> leadSourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadSource');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> leadTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadType');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      manufacturerNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'manufacturerNumber');
    });
  }

  QueryBuilder<ProspectsModel, bool, QQueryOperations> offlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'offline');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> postalCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postalCode');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> priceGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceGroup');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      productGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productGroup');
    });
  }

  QueryBuilder<ProspectsModel, int?, QQueryOperations> productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      productTypeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productTypeId');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      prospectStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prospectStatus');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> provinceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'province');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> quantityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantityId');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations>
      reasonIsColdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reasonIsCold');
    });
  }

  QueryBuilder<ProspectsModel, int?, QQueryOperations> regionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'regionId');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> routeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'route');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> routeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'routeCode');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<ProspectsModel, int?, QQueryOperations> subregionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subregionId');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> telephoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'telephone');
    });
  }

  QueryBuilder<ProspectsModel, int?, QQueryOperations> unitIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitId');
    });
  }

  QueryBuilder<ProspectsModel, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> updatedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedBy');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> userCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userCode');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> vatNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vatNumber');
    });
  }

  QueryBuilder<ProspectsModel, String?, QQueryOperations> zoneIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'zoneId');
    });
  }
}
