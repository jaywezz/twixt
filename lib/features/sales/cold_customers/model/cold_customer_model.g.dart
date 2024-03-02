// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cold_customer_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetColdCustomerModelCollection on Isar {
  IsarCollection<ColdCustomerModel> get coldCustomerModels => this.collection();
}

const ColdCustomerModelSchema = CollectionSchema(
  name: r'ColdCustomerModel',
  id: -5464738832790453986,
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
      type: IsarType.string,
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
    r'phoneNumber': PropertySchema(
      id: 31,
      name: r'phoneNumber',
      type: IsarType.string,
    ),
    r'postalCode': PropertySchema(
      id: 32,
      name: r'postalCode',
      type: IsarType.string,
    ),
    r'priceGroup': PropertySchema(
      id: 33,
      name: r'priceGroup',
      type: IsarType.string,
    ),
    r'productGroup': PropertySchema(
      id: 34,
      name: r'productGroup',
      type: IsarType.string,
    ),
    r'productId': PropertySchema(
      id: 35,
      name: r'productId',
      type: IsarType.string,
    ),
    r'productTypeId': PropertySchema(
      id: 36,
      name: r'productTypeId',
      type: IsarType.string,
    ),
    r'prospectStatus': PropertySchema(
      id: 37,
      name: r'prospectStatus',
      type: IsarType.string,
    ),
    r'province': PropertySchema(
      id: 38,
      name: r'province',
      type: IsarType.string,
    ),
    r'quantityId': PropertySchema(
      id: 39,
      name: r'quantityId',
      type: IsarType.string,
    ),
    r'reasonIsCold': PropertySchema(
      id: 40,
      name: r'reasonIsCold',
      type: IsarType.string,
    ),
    r'regionId': PropertySchema(
      id: 41,
      name: r'regionId',
      type: IsarType.long,
    ),
    r'route': PropertySchema(
      id: 42,
      name: r'route',
      type: IsarType.string,
    ),
    r'routeCode': PropertySchema(
      id: 43,
      name: r'routeCode',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 44,
      name: r'status',
      type: IsarType.string,
    ),
    r'subregionId': PropertySchema(
      id: 45,
      name: r'subregionId',
      type: IsarType.long,
    ),
    r'telephone': PropertySchema(
      id: 46,
      name: r'telephone',
      type: IsarType.string,
    ),
    r'unitId': PropertySchema(
      id: 47,
      name: r'unitId',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 48,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'updatedBy': PropertySchema(
      id: 49,
      name: r'updatedBy',
      type: IsarType.string,
    ),
    r'userCode': PropertySchema(
      id: 50,
      name: r'userCode',
      type: IsarType.string,
    ),
    r'vatNumber': PropertySchema(
      id: 51,
      name: r'vatNumber',
      type: IsarType.string,
    ),
    r'zoneId': PropertySchema(
      id: 52,
      name: r'zoneId',
      type: IsarType.string,
    )
  },
  estimateSize: _coldCustomerModelEstimateSize,
  serialize: _coldCustomerModelSerialize,
  deserialize: _coldCustomerModelDeserialize,
  deserializeProp: _coldCustomerModelDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _coldCustomerModelGetId,
  getLinks: _coldCustomerModelGetLinks,
  attach: _coldCustomerModelAttach,
  version: '3.1.0+1',
);

int _coldCustomerModelEstimateSize(
  ColdCustomerModel object,
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
    final value = object.customerGroupId;
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
    final value = object.productId;
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

void _coldCustomerModelSerialize(
  ColdCustomerModel object,
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
  writer.writeString(offsets[13], object.customerGroupId);
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
  writer.writeString(offsets[31], object.phoneNumber);
  writer.writeString(offsets[32], object.postalCode);
  writer.writeString(offsets[33], object.priceGroup);
  writer.writeString(offsets[34], object.productGroup);
  writer.writeString(offsets[35], object.productId);
  writer.writeString(offsets[36], object.productTypeId);
  writer.writeString(offsets[37], object.prospectStatus);
  writer.writeString(offsets[38], object.province);
  writer.writeString(offsets[39], object.quantityId);
  writer.writeString(offsets[40], object.reasonIsCold);
  writer.writeLong(offsets[41], object.regionId);
  writer.writeString(offsets[42], object.route);
  writer.writeString(offsets[43], object.routeCode);
  writer.writeString(offsets[44], object.status);
  writer.writeLong(offsets[45], object.subregionId);
  writer.writeString(offsets[46], object.telephone);
  writer.writeLong(offsets[47], object.unitId);
  writer.writeDateTime(offsets[48], object.updatedAt);
  writer.writeString(offsets[49], object.updatedBy);
  writer.writeString(offsets[50], object.userCode);
  writer.writeString(offsets[51], object.vatNumber);
  writer.writeString(offsets[52], object.zoneId);
}

ColdCustomerModel _coldCustomerModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ColdCustomerModel(
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
    customerGroupId: reader.readStringOrNull(offsets[13]),
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
    phoneNumber: reader.readStringOrNull(offsets[31]),
    postalCode: reader.readStringOrNull(offsets[32]),
    priceGroup: reader.readStringOrNull(offsets[33]),
    productGroup: reader.readStringOrNull(offsets[34]),
    productId: reader.readStringOrNull(offsets[35]),
    productTypeId: reader.readStringOrNull(offsets[36]),
    prospectStatus: reader.readStringOrNull(offsets[37]),
    province: reader.readStringOrNull(offsets[38]),
    quantityId: reader.readStringOrNull(offsets[39]),
    reasonIsCold: reader.readStringOrNull(offsets[40]),
    regionId: reader.readLongOrNull(offsets[41]),
    route: reader.readStringOrNull(offsets[42]),
    routeCode: reader.readStringOrNull(offsets[43]),
    status: reader.readStringOrNull(offsets[44]),
    subregionId: reader.readLongOrNull(offsets[45]),
    telephone: reader.readStringOrNull(offsets[46]),
    unitId: reader.readLongOrNull(offsets[47]),
    updatedAt: reader.readDateTimeOrNull(offsets[48]),
    updatedBy: reader.readStringOrNull(offsets[49]),
    userCode: reader.readStringOrNull(offsets[50]),
    vatNumber: reader.readStringOrNull(offsets[51]),
    zoneId: reader.readStringOrNull(offsets[52]),
  );
  object.isarId = id;
  return object;
}

P _coldCustomerModelDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
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
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readStringOrNull(offset)) as P;
    case 35:
      return (reader.readStringOrNull(offset)) as P;
    case 36:
      return (reader.readStringOrNull(offset)) as P;
    case 37:
      return (reader.readStringOrNull(offset)) as P;
    case 38:
      return (reader.readStringOrNull(offset)) as P;
    case 39:
      return (reader.readStringOrNull(offset)) as P;
    case 40:
      return (reader.readStringOrNull(offset)) as P;
    case 41:
      return (reader.readLongOrNull(offset)) as P;
    case 42:
      return (reader.readStringOrNull(offset)) as P;
    case 43:
      return (reader.readStringOrNull(offset)) as P;
    case 44:
      return (reader.readStringOrNull(offset)) as P;
    case 45:
      return (reader.readLongOrNull(offset)) as P;
    case 46:
      return (reader.readStringOrNull(offset)) as P;
    case 47:
      return (reader.readLongOrNull(offset)) as P;
    case 48:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 49:
      return (reader.readStringOrNull(offset)) as P;
    case 50:
      return (reader.readStringOrNull(offset)) as P;
    case 51:
      return (reader.readStringOrNull(offset)) as P;
    case 52:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _coldCustomerModelGetId(ColdCustomerModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _coldCustomerModelGetLinks(
    ColdCustomerModel object) {
  return [];
}

void _coldCustomerModelAttach(
    IsarCollection<dynamic> col, Id id, ColdCustomerModel object) {
  object.isarId = id;
}

extension ColdCustomerModelQueryWhereSort
    on QueryBuilder<ColdCustomerModel, ColdCustomerModel, QWhere> {
  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ColdCustomerModelQueryWhere
    on QueryBuilder<ColdCustomerModel, ColdCustomerModel, QWhereClause> {
  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterWhereClause>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterWhereClause>
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

extension ColdCustomerModelQueryFilter
    on QueryBuilder<ColdCustomerModel, ColdCustomerModel, QFilterCondition> {
  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      accountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'account',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      accountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'account',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      accountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'account',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      accountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'account',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      accountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'account',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      accountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'account',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      actionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      actionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      actionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      actionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'action',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      actionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      actionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      addressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      addressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      addressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      addressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      approvalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'approval',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      approvalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'approval',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      approvalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'approval',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      approvalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'approval',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      approvalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approval',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      approvalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'approval',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      approvalProspectStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'approvalProspectStatus',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      approvalProspectStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'approvalProspectStatus',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      approvalProspectStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'approvalProspectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      approvalProspectStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'approvalProspectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      branchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'branch',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      branchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'branch',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      branchContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'branch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      branchMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'branch',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      branchIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'branch',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      branchIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'branch',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      businessCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'businessCode',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      businessCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'businessCode',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      businessCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'businessCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      businessCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'businessCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      businessCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      businessCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'businessCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      cityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      cityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      cityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      cityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'city',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      cityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      cityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      contactPersonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactPerson',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      contactPersonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactPerson',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      contactPersonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contactPerson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      contactPersonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contactPerson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      contactPersonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactPerson',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      contactPersonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contactPerson',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      countryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      countryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      createdByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdBy',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      createdByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdBy',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      createdByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      createdByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      createdByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      createdByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerGroup',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerGroup',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerGroupId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerGroupId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerGroupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerGroupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerSecondaryGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerSecondaryGroup',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerSecondaryGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerSecondaryGroup',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerSecondaryGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerSecondaryGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerSecondaryGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerSecondaryGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerType',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerType',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerType',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      customerTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerType',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      deliveryTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deliveryTime',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      deliveryTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deliveryTime',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      deliveryTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deliveryTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      deliveryTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deliveryTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      deliveryTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deliveryTime',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      deliveryTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deliveryTime',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      idNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idNumber',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      idNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idNumber',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      idNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      idNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      idNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      idNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      imageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      imageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      institutionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'institutionName',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      institutionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'institutionName',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      institutionNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'institutionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      institutionNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'institutionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      institutionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'institutionName',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      institutionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'institutionName',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      isColdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isCold',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      isColdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isCold',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      isColdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCold',
        value: value,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      isProspectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isProspect',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      isProspectIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isProspect',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      isProspectEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isProspect',
        value: value,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      kraPinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kraPin',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      kraPinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kraPin',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      kraPinContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kraPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      kraPinMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kraPin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      kraPinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kraPin',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      kraPinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kraPin',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      latitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      latitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      latitudeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      latitudeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'latitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      latitudeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      latitudeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'latitude',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadSourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leadSource',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadSourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leadSource',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadSourceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leadSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadSourceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leadSource',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadSourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadSource',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadSourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leadSource',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leadType',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leadType',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leadType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leadType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadType',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      leadTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leadType',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      longitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      longitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      longitudeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      longitudeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'longitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      longitudeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      longitudeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'longitude',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      manufacturerNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'manufacturerNumber',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      manufacturerNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'manufacturerNumber',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      manufacturerNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'manufacturerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      manufacturerNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'manufacturerNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      manufacturerNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturerNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      manufacturerNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'manufacturerNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      phoneNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      phoneNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      postalCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'postalCode',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      postalCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'postalCode',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      postalCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'postalCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      postalCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'postalCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      postalCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postalCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      postalCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'postalCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      priceGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceGroup',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      priceGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceGroup',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      priceGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'priceGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      priceGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'priceGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      priceGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      priceGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'priceGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productGroup',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productGroup',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productTypeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productTypeId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productTypeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productTypeId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productTypeIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productTypeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productTypeIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productTypeId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productTypeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productTypeId',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      productTypeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productTypeId',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      prospectStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prospectStatus',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      prospectStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prospectStatus',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      prospectStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prospectStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      prospectStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prospectStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      prospectStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prospectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      prospectStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prospectStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      provinceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'province',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      provinceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'province',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      provinceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'province',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      provinceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'province',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      provinceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'province',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      provinceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'province',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      quantityIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantityId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      quantityIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantityId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      quantityIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quantityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      quantityIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quantityId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      quantityIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantityId',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      quantityIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quantityId',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      reasonIsColdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reasonIsCold',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      reasonIsColdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reasonIsCold',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      reasonIsColdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reasonIsCold',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      reasonIsColdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reasonIsCold',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      reasonIsColdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reasonIsCold',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      reasonIsColdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reasonIsCold',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      regionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'regionId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      regionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'regionId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      regionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'route',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'route',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'route',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'route',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'route',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'routeCode',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'routeCode',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'routeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'routeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'routeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      routeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'routeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      subregionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subregionId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      subregionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subregionId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      subregionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subregionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      telephoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'telephone',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      telephoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'telephone',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      telephoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      telephoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'telephone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      telephoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telephone',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      telephoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'telephone',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      unitIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unitId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      unitIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unitId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      unitIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitId',
        value: value,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      updatedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedBy',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      updatedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedBy',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      updatedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      updatedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updatedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      updatedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      updatedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updatedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      userCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userCode',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      userCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userCode',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      userCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      userCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      userCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      userCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      vatNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vatNumber',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      vatNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vatNumber',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      vatNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      vatNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vatNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      vatNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vatNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      vatNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vatNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      zoneIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'zoneId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      zoneIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'zoneId',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
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

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      zoneIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'zoneId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      zoneIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'zoneId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      zoneIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zoneId',
        value: '',
      ));
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterFilterCondition>
      zoneIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'zoneId',
        value: '',
      ));
    });
  }
}

extension ColdCustomerModelQueryObject
    on QueryBuilder<ColdCustomerModel, ColdCustomerModel, QFilterCondition> {}

extension ColdCustomerModelQueryLinks
    on QueryBuilder<ColdCustomerModel, ColdCustomerModel, QFilterCondition> {}

extension ColdCustomerModelQuerySortBy
    on QueryBuilder<ColdCustomerModel, ColdCustomerModel, QSortBy> {
  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByApproval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByApprovalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByApprovalProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByApprovalProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByBranch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branch', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByBranchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branch', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByBusinessCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByBusinessCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByContactPerson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByContactPersonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCreatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCreatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCustomerGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCustomerGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCustomerGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCustomerGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCustomerSecondaryGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSecondaryGroup', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCustomerSecondaryGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSecondaryGroup', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCustomerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByCustomerTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByDeliveryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTime', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByDeliveryTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTime', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByIdNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByIdNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByInstitutionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByInstitutionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByIsProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByIsProspectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByKraPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByKraPinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByLeadSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByLeadSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByLeadType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByLeadTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByManufacturerNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturerNumber', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByManufacturerNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturerNumber', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByPostalCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByPostalCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByPriceGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByPriceGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByProductGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByProductGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByProductTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByProductTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByProvince() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'province', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByProvinceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'province', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByQuantityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByQuantityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByReasonIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByReasonIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByRegionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByRouteCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByRouteCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortBySubregionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortBySubregionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByTelephone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByTelephoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByUnitId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByUnitIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByUpdatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByUpdatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByUserCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByUserCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByVatNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vatNumber', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByVatNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vatNumber', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByZoneId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zoneId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      sortByZoneIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zoneId', Sort.desc);
    });
  }
}

extension ColdCustomerModelQuerySortThenBy
    on QueryBuilder<ColdCustomerModel, ColdCustomerModel, QSortThenBy> {
  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByApproval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByApprovalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approval', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByApprovalProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByApprovalProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'approvalProspectStatus', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByBranch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branch', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByBranchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branch', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByBusinessCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByBusinessCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessCode', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByContactPerson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByContactPersonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPerson', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCreatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCreatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCustomerGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCustomerGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroup', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCustomerGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCustomerGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerGroupId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCustomerSecondaryGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSecondaryGroup', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCustomerSecondaryGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSecondaryGroup', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCustomerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByCustomerTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerType', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByDeliveryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTime', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByDeliveryTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryTime', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByIdNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByIdNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idNumber', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByInstitutionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByInstitutionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'institutionName', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCold', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByIsProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByIsProspectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isProspect', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByKraPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByKraPinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kraPin', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByLeadSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByLeadSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadSource', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByLeadType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByLeadTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadType', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByManufacturerNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturerNumber', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByManufacturerNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturerNumber', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByPostalCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByPostalCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postalCode', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByPriceGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByPriceGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceGroup', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByProductGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByProductGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productGroup', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByProductTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByProductTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productTypeId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByProspectStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByProspectStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prospectStatus', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByProvince() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'province', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByProvinceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'province', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByQuantityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByQuantityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByReasonIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByReasonIsColdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reasonIsCold', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByRegionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByRouteCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByRouteCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routeCode', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenBySubregionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenBySubregionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregionId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByTelephone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByTelephoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByUnitId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByUnitIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitId', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByUpdatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByUpdatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedBy', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByUserCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByUserCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userCode', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByVatNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vatNumber', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByVatNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vatNumber', Sort.desc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByZoneId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zoneId', Sort.asc);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QAfterSortBy>
      thenByZoneIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zoneId', Sort.desc);
    });
  }
}

extension ColdCustomerModelQueryWhereDistinct
    on QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct> {
  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByAccount({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'account', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByAction({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'action', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByAddress({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByApproval({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'approval', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByApprovalProspectStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'approvalProspectStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByBranch({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'branch', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByBusinessCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'businessCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct> distinctByCity(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'city', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByContactPerson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contactPerson',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByCountry({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByCreatedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByCustomerGroup({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerGroup',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByCustomerGroupId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerGroupId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByCustomerName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByCustomerSecondaryGroup({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerSecondaryGroup',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByCustomerType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByDeliveryTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deliveryTime', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByIdNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByInstitutionName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'institutionName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByIsCold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCold');
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByIsProspect() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isProspect');
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByKraPin({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kraPin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByLatitude({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByLeadSource({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadSource', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByLeadType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByLongitude({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByManufacturerNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'manufacturerNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByPhoneNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByPostalCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postalCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByPriceGroup({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceGroup', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByProductGroup({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productGroup', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByProductId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByProductTypeId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productTypeId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByProspectStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prospectStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByProvince({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'province', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByQuantityId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantityId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByReasonIsCold({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reasonIsCold', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'regionId');
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct> distinctByRoute(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'route', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByRouteCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'routeCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctBySubregionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subregionId');
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByTelephone({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'telephone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByUnitId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitId');
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByUpdatedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByUserCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByVatNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vatNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ColdCustomerModel, ColdCustomerModel, QDistinct>
      distinctByZoneId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'zoneId', caseSensitive: caseSensitive);
    });
  }
}

extension ColdCustomerModelQueryProperty
    on QueryBuilder<ColdCustomerModel, ColdCustomerModel, QQueryProperty> {
  QueryBuilder<ColdCustomerModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> accountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'account');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'action');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      approvalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'approval');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      approvalProspectStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'approvalProspectStatus');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> branchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'branch');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      businessCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'businessCode');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> cityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'city');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      contactPersonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contactPerson');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> countryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country');
    });
  }

  QueryBuilder<ColdCustomerModel, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      createdByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdBy');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      customerGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerGroup');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      customerGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerGroupId');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      customerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerName');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      customerSecondaryGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerSecondaryGroup');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      customerTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerType');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      deliveryTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deliveryTime');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<ColdCustomerModel, int?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      idNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idNumber');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      institutionNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'institutionName');
    });
  }

  QueryBuilder<ColdCustomerModel, int?, QQueryOperations> isColdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCold');
    });
  }

  QueryBuilder<ColdCustomerModel, int?, QQueryOperations> isProspectProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isProspect');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> kraPinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kraPin');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      leadSourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadSource');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      leadTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadType');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      manufacturerNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'manufacturerNumber');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      postalCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postalCode');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      priceGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceGroup');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      productGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productGroup');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      productTypeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productTypeId');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      prospectStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prospectStatus');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      provinceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'province');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      quantityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantityId');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      reasonIsColdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reasonIsCold');
    });
  }

  QueryBuilder<ColdCustomerModel, int?, QQueryOperations> regionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'regionId');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> routeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'route');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      routeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'routeCode');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<ColdCustomerModel, int?, QQueryOperations>
      subregionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subregionId');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      telephoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'telephone');
    });
  }

  QueryBuilder<ColdCustomerModel, int?, QQueryOperations> unitIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitId');
    });
  }

  QueryBuilder<ColdCustomerModel, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      updatedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedBy');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      userCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userCode');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations>
      vatNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vatNumber');
    });
  }

  QueryBuilder<ColdCustomerModel, String?, QQueryOperations> zoneIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'zoneId');
    });
  }
}
