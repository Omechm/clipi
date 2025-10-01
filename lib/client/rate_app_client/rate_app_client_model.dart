import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'rate_app_client_widget.dart' show RateAppClientWidget;
import 'package:flutter/material.dart';

class RateAppClientModel extends FlutterFlowModel<RateAppClientWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for DescriptionErro widget.
  FocusNode? descriptionErroFocusNode;
  TextEditingController? descriptionErroTextController;
  String? Function(BuildContext, String?)?
      descriptionErroTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionErroFocusNode?.dispose();
    descriptionErroTextController?.dispose();
  }
}
