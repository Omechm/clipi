import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'barber_services_widget.dart' show BarberServicesWidget;
import 'package:flutter/material.dart';

class BarberServicesModel extends FlutterFlowModel<BarberServicesWidget> {
  ///  Local state fields for this page.

  List<ServicesRow> pageServices = [];
  void addToPageServices(ServicesRow item) => pageServices.add(item);
  void removeFromPageServices(ServicesRow item) => pageServices.remove(item);
  void removeAtIndexFromPageServices(int index) => pageServices.removeAt(index);
  void insertAtIndexInPageServices(int index, ServicesRow item) =>
      pageServices.insert(index, item);
  void updatePageServicesAtIndex(int index, Function(ServicesRow) updateFn) =>
      pageServices[index] = updateFn(pageServices[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in BarberServices widget.
  List<ServicesRow>? outputBarberServices;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
