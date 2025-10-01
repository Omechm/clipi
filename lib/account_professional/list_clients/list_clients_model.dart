import '/components_app/card_client/card_client_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'list_clients_widget.dart' show ListClientsWidget;
import 'package:flutter/material.dart';

class ListClientsModel extends FlutterFlowModel<ListClientsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  // Model for cardClient component.
  late CardClientModel cardClientModel1;
  // Model for cardClient component.
  late CardClientModel cardClientModel2;
  // Model for cardClient component.
  late CardClientModel cardClientModel3;
  // Model for cardClient component.
  late CardClientModel cardClientModel4;
  // Model for cardClient component.
  late CardClientModel cardClientModel5;

  @override
  void initState(BuildContext context) {
    cardClientModel1 = createModel(context, () => CardClientModel());
    cardClientModel2 = createModel(context, () => CardClientModel());
    cardClientModel3 = createModel(context, () => CardClientModel());
    cardClientModel4 = createModel(context, () => CardClientModel());
    cardClientModel5 = createModel(context, () => CardClientModel());
  }

  @override
  void dispose() {
    searchFocusNode?.dispose();
    searchTextController?.dispose();

    cardClientModel1.dispose();
    cardClientModel2.dispose();
    cardClientModel3.dispose();
    cardClientModel4.dispose();
    cardClientModel5.dispose();
  }
}
