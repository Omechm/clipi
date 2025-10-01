import '/components_app/add_client/add_client_widget.dart';
import '/components_app/edit_button/edit_button_widget.dart';
import '/components_app/products/products_widget.dart';
import '/components_app/quick_reminder/quick_reminder_widget.dart';
import '/components_app/send/send_widget.dart';
import '/components_app/servivce_cut/servivce_cut_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ticket_client_widget.dart' show TicketClientWidget;
import 'package:flutter/material.dart';

class TicketClientModel extends FlutterFlowModel<TicketClientWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for quickReminder component.
  late QuickReminderModel quickReminderModel;
  // Model for send component.
  late SendModel sendModel;
  // Model for editButton component.
  late EditButtonModel editButtonModel1;
  // Model for editButton component.
  late EditButtonModel editButtonModel2;
  // Model for addTypeHaircuts.
  late AddClientModel addTypeHaircutsModel;
  // Model for ServivceCut component.
  late ServivceCutModel servivceCutModel1;
  // Model for ServivceCut component.
  late ServivceCutModel servivceCutModel2;
  // Model for ServivceCut component.
  late ServivceCutModel servivceCutModel3;
  // Model for ServivceCut component.
  late ServivceCutModel servivceCutModel4;
  // Model for addProducts.
  late AddClientModel addProductsModel;
  // Model for products component.
  late ProductsModel productsModel1;
  // Model for products component.
  late ProductsModel productsModel2;
  // Model for products component.
  late ProductsModel productsModel3;
  // Model for products component.
  late ProductsModel productsModel4;
  // Model for editButton component.
  late EditButtonModel editButtonModel3;

  @override
  void initState(BuildContext context) {
    quickReminderModel = createModel(context, () => QuickReminderModel());
    sendModel = createModel(context, () => SendModel());
    editButtonModel1 = createModel(context, () => EditButtonModel());
    editButtonModel2 = createModel(context, () => EditButtonModel());
    addTypeHaircutsModel = createModel(context, () => AddClientModel());
    servivceCutModel1 = createModel(context, () => ServivceCutModel());
    servivceCutModel2 = createModel(context, () => ServivceCutModel());
    servivceCutModel3 = createModel(context, () => ServivceCutModel());
    servivceCutModel4 = createModel(context, () => ServivceCutModel());
    addProductsModel = createModel(context, () => AddClientModel());
    productsModel1 = createModel(context, () => ProductsModel());
    productsModel2 = createModel(context, () => ProductsModel());
    productsModel3 = createModel(context, () => ProductsModel());
    productsModel4 = createModel(context, () => ProductsModel());
    editButtonModel3 = createModel(context, () => EditButtonModel());
  }

  @override
  void dispose() {
    quickReminderModel.dispose();
    sendModel.dispose();
    editButtonModel1.dispose();
    editButtonModel2.dispose();
    addTypeHaircutsModel.dispose();
    servivceCutModel1.dispose();
    servivceCutModel2.dispose();
    servivceCutModel3.dispose();
    servivceCutModel4.dispose();
    addProductsModel.dispose();
    productsModel1.dispose();
    productsModel2.dispose();
    productsModel3.dispose();
    productsModel4.dispose();
    editButtonModel3.dispose();
  }
}
