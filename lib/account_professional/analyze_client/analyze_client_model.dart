import '/components/services_rend_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'analyze_client_widget.dart' show AnalyzeClientWidget;
import 'package:flutter/material.dart';

class AnalyzeClientModel extends FlutterFlowModel<AnalyzeClientWidget> {
  ///  Local state fields for this page.

  bool? floatingOn = false;

  ///  State fields for stateful widgets in this page.

  // Model for servicesRend component.
  late ServicesRendModel servicesRendModel1;
  // Model for servicesRend component.
  late ServicesRendModel servicesRendModel2;
  // Model for servicesRend component.
  late ServicesRendModel servicesRendModel3;
  // Model for servicesRend component.
  late ServicesRendModel servicesRendModel4;

  @override
  void initState(BuildContext context) {
    servicesRendModel1 = createModel(context, () => ServicesRendModel());
    servicesRendModel2 = createModel(context, () => ServicesRendModel());
    servicesRendModel3 = createModel(context, () => ServicesRendModel());
    servicesRendModel4 = createModel(context, () => ServicesRendModel());
  }

  @override
  void dispose() {
    servicesRendModel1.dispose();
    servicesRendModel2.dispose();
    servicesRendModel3.dispose();
    servicesRendModel4.dispose();
  }
}
