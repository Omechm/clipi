import '/components_app/services_serv/services_serv_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_service_widget.dart' show EditServiceWidget;
import 'package:flutter/material.dart';

class EditServiceModel extends FlutterFlowModel<EditServiceWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for servicesServ component.
  late ServicesServModel servicesServModel1;
  // Model for servicesServ component.
  late ServicesServModel servicesServModel2;
  // Model for servicesServ component.
  late ServicesServModel servicesServModel3;

  @override
  void initState(BuildContext context) {
    servicesServModel1 = createModel(context, () => ServicesServModel());
    servicesServModel2 = createModel(context, () => ServicesServModel());
    servicesServModel3 = createModel(context, () => ServicesServModel());
  }

  @override
  void dispose() {
    servicesServModel1.dispose();
    servicesServModel2.dispose();
    servicesServModel3.dispose();
  }
}
