import '/components/side_bar_barber_widget.dart';
import '/components/toschedule_widget.dart';
import '/components_app/enable_service/enable_service_widget.dart';
import '/components_app/now_line/now_line_widget.dart';
import '/components_calendar/background/background_widget.dart';
import '/components_calendar/reserve/reserve_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_pro_widget.dart' show HomeProWidget;
import 'package:flutter/material.dart';

class HomeProModel extends FlutterFlowModel<HomeProWidget> {
  ///  Local state fields for this page.

  bool? eyeOn = false;

  ///  State fields for stateful widgets in this page.

  // Model for Background component.
  late BackgroundModel backgroundModel;
  // Model for NowLine component.
  late NowLineModel nowLineModel;
  // Model for Reserve component.
  late ReserveModel reserveModel1;
  // Model for Reserve component.
  late ReserveModel reserveModel2;
  // Model for EnableService component.
  late EnableServiceModel enableServiceModel;
  // Model for toschedule component.
  late ToscheduleModel toscheduleModel;
  // Model for SideBarBarber component.
  late SideBarBarberModel sideBarBarberModel;

  @override
  void initState(BuildContext context) {
    backgroundModel = createModel(context, () => BackgroundModel());
    nowLineModel = createModel(context, () => NowLineModel());
    reserveModel1 = createModel(context, () => ReserveModel());
    reserveModel2 = createModel(context, () => ReserveModel());
    enableServiceModel = createModel(context, () => EnableServiceModel());
    toscheduleModel = createModel(context, () => ToscheduleModel());
    sideBarBarberModel = createModel(context, () => SideBarBarberModel());
  }

  @override
  void dispose() {
    backgroundModel.dispose();
    nowLineModel.dispose();
    reserveModel1.dispose();
    reserveModel2.dispose();
    enableServiceModel.dispose();
    toscheduleModel.dispose();
    sideBarBarberModel.dispose();
  }
}
