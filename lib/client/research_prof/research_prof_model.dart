import '/components/card_rate_prof_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'research_prof_widget.dart' show ResearchProfWidget;
import 'package:flutter/material.dart';

class ResearchProfModel extends FlutterFlowModel<ResearchProfWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Research widget.
  FocusNode? researchFocusNode;
  TextEditingController? researchTextController;
  String? Function(BuildContext, String?)? researchTextControllerValidator;
  // Model for cardRateProf component.
  late CardRateProfModel cardRateProfModel1;
  // Model for cardRateProf component.
  late CardRateProfModel cardRateProfModel2;
  // Model for cardRateProf component.
  late CardRateProfModel cardRateProfModel3;
  // Model for cardRateProf component.
  late CardRateProfModel cardRateProfModel4;

  @override
  void initState(BuildContext context) {
    cardRateProfModel1 = createModel(context, () => CardRateProfModel());
    cardRateProfModel2 = createModel(context, () => CardRateProfModel());
    cardRateProfModel3 = createModel(context, () => CardRateProfModel());
    cardRateProfModel4 = createModel(context, () => CardRateProfModel());
  }

  @override
  void dispose() {
    researchFocusNode?.dispose();
    researchTextController?.dispose();

    cardRateProfModel1.dispose();
    cardRateProfModel2.dispose();
    cardRateProfModel3.dispose();
    cardRateProfModel4.dispose();
  }
}
