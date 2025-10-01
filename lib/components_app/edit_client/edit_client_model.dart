import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_client_widget.dart' show EditClientWidget;
import 'package:flutter/material.dart';

class EditClientModel extends FlutterFlowModel<EditClientWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for NumberPhone widget.
  FocusNode? numberPhoneFocusNode;
  TextEditingController? numberPhoneTextController;
  String? Function(BuildContext, String?)? numberPhoneTextControllerValidator;
  // State field(s) for Month widget.
  String? monthValue;
  FormFieldController<String>? monthValueController;
  // State field(s) for Obs widget.
  FocusNode? obsFocusNode;
  TextEditingController? obsTextController;
  String? Function(BuildContext, String?)? obsTextControllerValidator;
  // State field(s) for Value widget.
  FocusNode? valueFocusNode;
  TextEditingController? valueTextController;
  String? Function(BuildContext, String?)? valueTextControllerValidator;
  // State field(s) for number widget.
  FocusNode? numberFocusNode;
  TextEditingController? numberTextController;
  String? Function(BuildContext, String?)? numberTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for Neighborhood widget.
  FocusNode? neighborhoodFocusNode;
  TextEditingController? neighborhoodTextController;
  String? Function(BuildContext, String?)? neighborhoodTextControllerValidator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for State widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    numberPhoneFocusNode?.dispose();
    numberPhoneTextController?.dispose();

    obsFocusNode?.dispose();
    obsTextController?.dispose();

    valueFocusNode?.dispose();
    valueTextController?.dispose();

    numberFocusNode?.dispose();
    numberTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController6?.dispose();

    neighborhoodFocusNode?.dispose();
    neighborhoodTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();
  }
}
