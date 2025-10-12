// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRoleAssignmentDTStruct extends BaseStruct {
  UserRoleAssignmentDTStruct({
    String? id,
    String? profileId,
    String? roleId,
  })  : _id = id,
        _profileId = profileId,
        _roleId = roleId;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "profile_id" field.
  String? _profileId;
  String get profileId => _profileId ?? '';
  set profileId(String? val) => _profileId = val;

  bool hasProfileId() => _profileId != null;

  // "role_id" field.
  String? _roleId;
  String get roleId => _roleId ?? '';
  set roleId(String? val) => _roleId = val;

  bool hasRoleId() => _roleId != null;

  static UserRoleAssignmentDTStruct fromMap(Map<String, dynamic> data) =>
      UserRoleAssignmentDTStruct(
        id: data['id'] as String?,
        profileId: data['profile_id'] as String?,
        roleId: data['role_id'] as String?,
      );

  static UserRoleAssignmentDTStruct? maybeFromMap(dynamic data) => data is Map
      ? UserRoleAssignmentDTStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'profile_id': _profileId,
        'role_id': _roleId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'profile_id': serializeParam(
          _profileId,
          ParamType.String,
        ),
        'role_id': serializeParam(
          _roleId,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserRoleAssignmentDTStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserRoleAssignmentDTStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        profileId: deserializeParam(
          data['profile_id'],
          ParamType.String,
          false,
        ),
        roleId: deserializeParam(
          data['role_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserRoleAssignmentDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserRoleAssignmentDTStruct &&
        id == other.id &&
        profileId == other.profileId &&
        roleId == other.roleId;
  }

  @override
  int get hashCode => const ListEquality().hash([id, profileId, roleId]);
}

UserRoleAssignmentDTStruct createUserRoleAssignmentDTStruct({
  String? id,
  String? profileId,
  String? roleId,
}) =>
    UserRoleAssignmentDTStruct(
      id: id,
      profileId: profileId,
      roleId: roleId,
    );
