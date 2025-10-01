import '/components_app/payment_forms/payment_forms_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'client_payments_widget.dart' show ClientPaymentsWidget;
import 'package:flutter/material.dart';

class ClientPaymentsModel extends FlutterFlowModel<ClientPaymentsWidget> {
  ///  Local state fields for this page.

  bool? floatingOn = false;

  ///  State fields for stateful widgets in this page.

  // Model for PaymentForms component.
  late PaymentFormsModel paymentFormsModel;

  @override
  void initState(BuildContext context) {
    paymentFormsModel = createModel(context, () => PaymentFormsModel());
  }

  @override
  void dispose() {
    paymentFormsModel.dispose();
  }
}
