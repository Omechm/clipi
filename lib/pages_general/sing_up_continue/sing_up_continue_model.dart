import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sing_up_continue_widget.dart' show SingUpContinueWidget;
import 'package:flutter/material.dart';

class SingUpContinueModel extends FlutterFlowModel<SingUpContinueWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }
}
