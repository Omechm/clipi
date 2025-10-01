import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'booking_new_widget.dart' show BookingNewWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BookingNewModel extends FlutterFlowModel<BookingNewWidget> {
  ///  Local state fields for this page.

  bool? switchOn = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for NumberPhone widget.
  FocusNode? numberPhoneFocusNode;
  TextEditingController? numberPhoneTextController;
  late MaskTextInputFormatter numberPhoneMask;
  String? Function(BuildContext, String?)? numberPhoneTextControllerValidator;
  // State field(s) for typesCut widget.
  List<String>? typesCutValue;
  FormFieldController<List<String>>? typesCutValueController;
  // State field(s) for hour widget.
  String? hourValue;
  FormFieldController<String>? hourValueController;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

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
