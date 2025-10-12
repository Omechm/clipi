import '/components/dayweek_widget.dart';
import '/components/side_bar_barber_widget.dart';
import '/components/toschedule_widget.dart';
import '/components_app/enable_service/enable_service_widget.dart';
import '/components_app/now_line/now_line_widget.dart';
import '/components_calendar/background/background_widget.dart';
import '/components_calendar/reserve/reserve_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'home_pro_widget.dart' show HomeProWidget;
import 'package:flutter/material.dart';

class HomeProModel extends FlutterFlowModel<HomeProWidget> {
  ///  Local state fields for this page.

  bool? eyeOn = false;

  double? nowLineTopPadding = 0.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - generate12HourTimesFromStart] action in HomePro widget.
  List<String>? outputListOfTimes;
  InstantTimer? instantTimer;
  // Model for Background component.
  late BackgroundModel backgroundModel;
  // Model for NowLine component.
  late NowLineModel nowLineModel;
  // Model for Reserve component.
  late ReserveModel reserveModel;
  // Model for EnableService component.
  late EnableServiceModel enableServiceModel;
  // Models for dayweek dynamic component.
  late FlutterFlowDynamicModels<DayweekModel> dayweekModels;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - generate12HourTimesFromStart] action in DropDown widget.
  List<String>? outputListOfTimesCopy;
  // Model for toschedule component.
  late ToscheduleModel toscheduleModel;
  // Model for SideBarBarber component.
  late SideBarBarberModel sideBarBarberModel;

  @override
  void initState(BuildContext context) {
    backgroundModel = createModel(context, () => BackgroundModel());
    nowLineModel = createModel(context, () => NowLineModel());
    reserveModel = createModel(context, () => ReserveModel());
    enableServiceModel = createModel(context, () => EnableServiceModel());
    dayweekModels = FlutterFlowDynamicModels(() => DayweekModel());
    toscheduleModel = createModel(context, () => ToscheduleModel());
    sideBarBarberModel = createModel(context, () => SideBarBarberModel());
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    backgroundModel.dispose();
    nowLineModel.dispose();
    reserveModel.dispose();
    enableServiceModel.dispose();
    dayweekModels.dispose();
    toscheduleModel.dispose();
    sideBarBarberModel.dispose();
  }
}
