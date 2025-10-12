import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'checking_user_role_widget.dart' show CheckingUserRoleWidget;
import 'package:flutter/material.dart';

class CheckingUserRoleModel extends FlutterFlowModel<CheckingUserRoleWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - isBarber] action in checkingUserRole widget.
  bool? outputIsBarber;
  // Stores action output result for [Backend Call - Query Rows] action in checkingUserRole widget.
  List<RoleAssignmentsRow>? outputUserRoleAssignmentEmailLogin;
  // Stores action output result for [Backend Call - Query Rows] action in checkingUserRole widget.
  List<ProfilesRow>? outputUserProfile;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
