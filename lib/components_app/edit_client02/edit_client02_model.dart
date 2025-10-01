import '/flutter_flow/flutter_flow_util.dart';
import 'edit_client02_widget.dart' show EditClient02Widget;
import 'package:flutter/material.dart';

class EditClient02Model extends FlutterFlowModel<EditClient02Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for NumberPhone widget.
  FocusNode? numberPhoneFocusNode;
  TextEditingController? numberPhoneTextController;
  String? Function(BuildContext, String?)? numberPhoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    numberPhoneFocusNode?.dispose();
    numberPhoneTextController?.dispose();
  }
}
