import '../database.dart';

class RoleAssignmentsTable extends SupabaseTable<RoleAssignmentsRow> {
  @override
  String get tableName => 'role_assignments';

  @override
  RoleAssignmentsRow createRow(Map<String, dynamic> data) =>
      RoleAssignmentsRow(data);
}

class RoleAssignmentsRow extends SupabaseDataRow {
  RoleAssignmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RoleAssignmentsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get profileId => getField<String>('profile_id')!;
  set profileId(String value) => setField<String>('profile_id', value);

  String get roleId => getField<String>('role_id')!;
  set roleId(String value) => setField<String>('role_id', value);
}
