import '/components_calendar/hour_background/hour_background_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'background_widget.dart' show BackgroundWidget;
import 'package:flutter/material.dart';

class BackgroundModel extends FlutterFlowModel<BackgroundWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for HourBackground dynamic component.
  late FlutterFlowDynamicModels<HourBackgroundModel> hourBackgroundModels;

  @override
  void initState(BuildContext context) {
    hourBackgroundModels =
        FlutterFlowDynamicModels(() => HourBackgroundModel());
  }

  @override
  void dispose() {
    hourBackgroundModels.dispose();
  }
}
