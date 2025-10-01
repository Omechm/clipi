import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'report_bug_widget.dart' show ReportBugWidget;
import 'package:flutter/material.dart';

class ReportBugModel extends FlutterFlowModel<ReportBugWidget> {
  ///  State fields for stateful widgets in this page.

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
