import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'research_map_prof_widget.dart' show ResearchMapProfWidget;
import 'package:flutter/material.dart';

class ResearchMapProfModel extends FlutterFlowModel<ResearchMapProfWidget> {
  ///  Local state fields for this page.

  bool pageListViewVisi = false;

  List<ShopsRow> pageBarberShop = [];
  void addToPageBarberShop(ShopsRow item) => pageBarberShop.add(item);
  void removeFromPageBarberShop(ShopsRow item) => pageBarberShop.remove(item);
  void removeAtIndexFromPageBarberShop(int index) =>
      pageBarberShop.removeAt(index);
  void insertAtIndexInPageBarberShop(int index, ShopsRow item) =>
      pageBarberShop.insert(index, item);
  void updatePageBarberShopAtIndex(int index, Function(ShopsRow) updateFn) =>
      pageBarberShop[index] = updateFn(pageBarberShop[index]);

  List<LatLng> pageLatLong = [];
  void addToPageLatLong(LatLng item) => pageLatLong.add(item);
  void removeFromPageLatLong(LatLng item) => pageLatLong.remove(item);
  void removeAtIndexFromPageLatLong(int index) => pageLatLong.removeAt(index);
  void insertAtIndexInPageLatLong(int index, LatLng item) =>
      pageLatLong.insert(index, item);
  void updatePageLatLongAtIndex(int index, Function(LatLng) updateFn) =>
      pageLatLong[index] = updateFn(pageLatLong[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in researchMapProf widget.
  List<ShopsRow>? qShops;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
