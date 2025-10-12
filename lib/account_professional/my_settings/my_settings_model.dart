import '/backend/supabase/supabase.dart';
import '/components/name_prof_widget.dart';
import '/components_app/services_serv/services_serv_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_settings_widget.dart' show MySettingsWidget;
import 'package:flutter/material.dart';

class MySettingsModel extends FlutterFlowModel<MySettingsWidget> {
  ///  Local state fields for this page.

  bool? floatingOn = false;

  List<ServicesRow> pageServices = [];
  void addToPageServices(ServicesRow item) => pageServices.add(item);
  void removeFromPageServices(ServicesRow item) => pageServices.remove(item);
  void removeAtIndexFromPageServices(int index) => pageServices.removeAt(index);
  void insertAtIndexInPageServices(int index, ServicesRow item) =>
      pageServices.insert(index, item);
  void updatePageServicesAtIndex(int index, Function(ServicesRow) updateFn) =>
      pageServices[index] = updateFn(pageServices[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in MySettings widget.
  List<ServicesRow>? outputBarberServices;
  // Models for servicesServ dynamic component.
  late FlutterFlowDynamicModels<ServicesServModel> servicesServModels;
  // Model for nameProf component.
  late NameProfModel nameProfModel1;
  // Model for nameProf component.
  late NameProfModel nameProfModel2;
  // Model for nameProf component.
  late NameProfModel nameProfModel3;

  @override
  void initState(BuildContext context) {
    servicesServModels = FlutterFlowDynamicModels(() => ServicesServModel());
    nameProfModel1 = createModel(context, () => NameProfModel());
    nameProfModel2 = createModel(context, () => NameProfModel());
    nameProfModel3 = createModel(context, () => NameProfModel());
  }

  @override
  void dispose() {
    servicesServModels.dispose();
    nameProfModel1.dispose();
    nameProfModel2.dispose();
    nameProfModel3.dispose();
  }
}
