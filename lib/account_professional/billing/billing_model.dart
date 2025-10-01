import '/components/payments_widget.dart';
import '/components/services_completed_widget.dart';
import '/components_app/collum_graph/collum_graph_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'billing_widget.dart' show BillingWidget;
import 'package:flutter/material.dart';

class BillingModel extends FlutterFlowModel<BillingWidget> {
  ///  Local state fields for this page.

  bool? floatingOn = false;

  ///  State fields for stateful widgets in this page.

  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel1;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel2;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel3;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel4;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel5;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel6;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel7;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel8;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel9;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel10;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel11;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel12;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel13;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel14;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel15;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel16;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel17;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel18;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel19;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel20;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel21;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel22;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel23;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel24;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel25;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel26;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel27;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel28;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel29;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel30;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel31;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel32;
  // Model for CollumGraph component.
  late CollumGraphModel collumGraphModel33;
  // Model for ServicesCompleted component.
  late ServicesCompletedModel servicesCompletedModel1;
  // Model for ServicesCompleted component.
  late ServicesCompletedModel servicesCompletedModel2;
  // Model for ServicesCompleted component.
  late ServicesCompletedModel servicesCompletedModel3;
  // Model for ServicesCompleted component.
  late ServicesCompletedModel servicesCompletedModel4;
  // Model for Payments component.
  late PaymentsModel paymentsModel1;
  // Model for Payments component.
  late PaymentsModel paymentsModel2;
  // Model for Payments component.
  late PaymentsModel paymentsModel3;
  // Model for Payments component.
  late PaymentsModel paymentsModel4;

  @override
  void initState(BuildContext context) {
    collumGraphModel1 = createModel(context, () => CollumGraphModel());
    collumGraphModel2 = createModel(context, () => CollumGraphModel());
    collumGraphModel3 = createModel(context, () => CollumGraphModel());
    collumGraphModel4 = createModel(context, () => CollumGraphModel());
    collumGraphModel5 = createModel(context, () => CollumGraphModel());
    collumGraphModel6 = createModel(context, () => CollumGraphModel());
    collumGraphModel7 = createModel(context, () => CollumGraphModel());
    collumGraphModel8 = createModel(context, () => CollumGraphModel());
    collumGraphModel9 = createModel(context, () => CollumGraphModel());
    collumGraphModel10 = createModel(context, () => CollumGraphModel());
    collumGraphModel11 = createModel(context, () => CollumGraphModel());
    collumGraphModel12 = createModel(context, () => CollumGraphModel());
    collumGraphModel13 = createModel(context, () => CollumGraphModel());
    collumGraphModel14 = createModel(context, () => CollumGraphModel());
    collumGraphModel15 = createModel(context, () => CollumGraphModel());
    collumGraphModel16 = createModel(context, () => CollumGraphModel());
    collumGraphModel17 = createModel(context, () => CollumGraphModel());
    collumGraphModel18 = createModel(context, () => CollumGraphModel());
    collumGraphModel19 = createModel(context, () => CollumGraphModel());
    collumGraphModel20 = createModel(context, () => CollumGraphModel());
    collumGraphModel21 = createModel(context, () => CollumGraphModel());
    collumGraphModel22 = createModel(context, () => CollumGraphModel());
    collumGraphModel23 = createModel(context, () => CollumGraphModel());
    collumGraphModel24 = createModel(context, () => CollumGraphModel());
    collumGraphModel25 = createModel(context, () => CollumGraphModel());
    collumGraphModel26 = createModel(context, () => CollumGraphModel());
    collumGraphModel27 = createModel(context, () => CollumGraphModel());
    collumGraphModel28 = createModel(context, () => CollumGraphModel());
    collumGraphModel29 = createModel(context, () => CollumGraphModel());
    collumGraphModel30 = createModel(context, () => CollumGraphModel());
    collumGraphModel31 = createModel(context, () => CollumGraphModel());
    collumGraphModel32 = createModel(context, () => CollumGraphModel());
    collumGraphModel33 = createModel(context, () => CollumGraphModel());
    servicesCompletedModel1 =
        createModel(context, () => ServicesCompletedModel());
    servicesCompletedModel2 =
        createModel(context, () => ServicesCompletedModel());
    servicesCompletedModel3 =
        createModel(context, () => ServicesCompletedModel());
    servicesCompletedModel4 =
        createModel(context, () => ServicesCompletedModel());
    paymentsModel1 = createModel(context, () => PaymentsModel());
    paymentsModel2 = createModel(context, () => PaymentsModel());
    paymentsModel3 = createModel(context, () => PaymentsModel());
    paymentsModel4 = createModel(context, () => PaymentsModel());
  }

  @override
  void dispose() {
    collumGraphModel1.dispose();
    collumGraphModel2.dispose();
    collumGraphModel3.dispose();
    collumGraphModel4.dispose();
    collumGraphModel5.dispose();
    collumGraphModel6.dispose();
    collumGraphModel7.dispose();
    collumGraphModel8.dispose();
    collumGraphModel9.dispose();
    collumGraphModel10.dispose();
    collumGraphModel11.dispose();
    collumGraphModel12.dispose();
    collumGraphModel13.dispose();
    collumGraphModel14.dispose();
    collumGraphModel15.dispose();
    collumGraphModel16.dispose();
    collumGraphModel17.dispose();
    collumGraphModel18.dispose();
    collumGraphModel19.dispose();
    collumGraphModel20.dispose();
    collumGraphModel21.dispose();
    collumGraphModel22.dispose();
    collumGraphModel23.dispose();
    collumGraphModel24.dispose();
    collumGraphModel25.dispose();
    collumGraphModel26.dispose();
    collumGraphModel27.dispose();
    collumGraphModel28.dispose();
    collumGraphModel29.dispose();
    collumGraphModel30.dispose();
    collumGraphModel31.dispose();
    collumGraphModel32.dispose();
    collumGraphModel33.dispose();
    servicesCompletedModel1.dispose();
    servicesCompletedModel2.dispose();
    servicesCompletedModel3.dispose();
    servicesCompletedModel4.dispose();
    paymentsModel1.dispose();
    paymentsModel2.dispose();
    paymentsModel3.dispose();
    paymentsModel4.dispose();
  }
}
