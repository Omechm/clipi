import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Custom Action - isBarber] action in Enter widget.
  bool? outputIsBarber;
  // Stores action output result for [Backend Call - Query Rows] action in Enter widget.
  List<RoleAssignmentsRow>? outputUserRoleAssignmentEmailLogin;
  // Stores action output result for [Backend Call - Query Rows] action in Enter widget.
  List<ProfilesRow>? outputUserProfile;
  // Stores action output result for [Backend Call - Query Rows] action in Enter widget.
  List<RoleAssignmentsRow>? outputUserRoleAssignment;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
