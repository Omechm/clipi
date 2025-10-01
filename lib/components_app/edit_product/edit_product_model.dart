import '/flutter_flow/flutter_flow_util.dart';
import 'edit_product_widget.dart' show EditProductWidget;
import 'package:flutter/material.dart';

class EditProductModel extends FlutterFlowModel<EditProductWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for NameProduct widget.
  FocusNode? nameProductFocusNode;
  TextEditingController? nameProductTextController;
  String? Function(BuildContext, String?)? nameProductTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();

    nameProductFocusNode?.dispose();
    nameProductTextController?.dispose();
  }
}
