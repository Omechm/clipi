import '/components/hair_cut_widget.dart';
import '/components/name_prof_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_settings_widget.dart' show MySettingsWidget;
import 'package:flutter/material.dart';

class MySettingsModel extends FlutterFlowModel<MySettingsWidget> {
  ///  Local state fields for this page.

  bool? floatingOn = false;

  ///  State fields for stateful widgets in this page.

  // Model for hairCut component.
  late HairCutModel hairCutModel1;
  // Model for hairCut component.
  late HairCutModel hairCutModel2;
  // Model for hairCut component.
  late HairCutModel hairCutModel3;
  // Model for hairCut component.
  late HairCutModel hairCutModel4;
  // Model for nameProf component.
  late NameProfModel nameProfModel1;
  // Model for nameProf component.
  late NameProfModel nameProfModel2;
  // Model for nameProf component.
  late NameProfModel nameProfModel3;

  @override
  void initState(BuildContext context) {
    hairCutModel1 = createModel(context, () => HairCutModel());
    hairCutModel2 = createModel(context, () => HairCutModel());
    hairCutModel3 = createModel(context, () => HairCutModel());
    hairCutModel4 = createModel(context, () => HairCutModel());
    nameProfModel1 = createModel(context, () => NameProfModel());
    nameProfModel2 = createModel(context, () => NameProfModel());
    nameProfModel3 = createModel(context, () => NameProfModel());
  }

  @override
  void dispose() {
    hairCutModel1.dispose();
    hairCutModel2.dispose();
    hairCutModel3.dispose();
    hairCutModel4.dispose();
    nameProfModel1.dispose();
    nameProfModel2.dispose();
    nameProfModel3.dispose();
  }
}
