import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'code_phone_widget.dart' show CodePhoneWidget;
import 'package:flutter/material.dart';

class CodePhoneModel extends FlutterFlowModel<CodePhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Create widget.
  List<ProfilesRow>? outputUserProfile;
  // Stores action output result for [Custom Action - phoneValidationCodeGenerator] action in Row widget.
  int? outputGeneratedCode;
  // Stores action output result for [Backend Call - Update Row(s)] action in Row widget.
  List<ProfilesRow>? ouputUserProfile;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
