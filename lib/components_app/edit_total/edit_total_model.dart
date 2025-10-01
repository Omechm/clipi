import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_total_widget.dart' show EditTotalWidget;
import 'package:flutter/material.dart';

class EditTotalModel extends FlutterFlowModel<EditTotalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for value widget.
  FocusNode? valueFocusNode;
  TextEditingController? valueTextController;
  String? Function(BuildContext, String?)? valueTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    valueFocusNode?.dispose();
    valueTextController?.dispose();
  }
}
