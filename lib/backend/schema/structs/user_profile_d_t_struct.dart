// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileDTStruct extends BaseStruct {
  UserProfileDTStruct({
    String? id,
    String? fullName,
    String? phone,
    String? avatarUrl,
    String? createdAt,
    String? code,
  })  : _id = id,
        _fullName = fullName,
        _phone = phone,
        _avatarUrl = avatarUrl,
        _createdAt = createdAt,
        _code = code;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "avatar_url" field.
  String? _avatarUrl;
  String get avatarUrl => _avatarUrl ?? '';
  set avatarUrl(String? val) => _avatarUrl = val;

  bool hasAvatarUrl() => _avatarUrl != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  static UserProfileDTStruct fromMap(Map<String, dynamic> data) =>
      UserProfileDTStruct(
        id: data['id'] as String?,
        fullName: data['full_name'] as String?,
        phone: data['phone'] as String?,
        avatarUrl: data['avatar_url'] as String?,
        createdAt: data['created_at'] as String?,
        code: data['code'] as String?,
      );

  static UserProfileDTStruct? maybeFromMap(dynamic data) => data is Map
      ? UserProfileDTStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'full_name': _fullName,
        'phone': _phone,
        'avatar_url': _avatarUrl,
        'created_at': _createdAt,
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'avatar_url': serializeParam(
          _avatarUrl,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserProfileDTStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserProfileDTStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        avatarUrl: deserializeParam(
          data['avatar_url'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserProfileDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserProfileDTStruct &&
        id == other.id &&
        fullName == other.fullName &&
        phone == other.phone &&
        avatarUrl == other.avatarUrl &&
        createdAt == other.createdAt &&
        code == other.code;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, fullName, phone, avatarUrl, createdAt, code]);
}

UserProfileDTStruct createUserProfileDTStruct({
  String? id,
  String? fullName,
  String? phone,
  String? avatarUrl,
  String? createdAt,
  String? code,
}) =>
    UserProfileDTStruct(
      id: id,
      fullName: fullName,
      phone: phone,
      avatarUrl: avatarUrl,
      createdAt: createdAt,
      code: code,
    );
