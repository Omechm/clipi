import '/components_app/comment/comment_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'schedule_haircut_widget.dart' show ScheduleHaircutWidget;
import 'package:flutter/material.dart';

class ScheduleHaircutModel extends FlutterFlowModel<ScheduleHaircutWidget> {
  ///  Local state fields for this page.

  String? hour = '0';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for Switch widget.
  bool? switchValue4;
  // Model for comment component.
  late CommentModel commentModel1;
  // Model for comment component.
  late CommentModel commentModel2;
  // Model for comment component.
  late CommentModel commentModel3;
  // Model for comment component.
  late CommentModel commentModel4;
  // Model for comment component.
  late CommentModel commentModel5;
  // Model for comment component.
  late CommentModel commentModel6;
  // Model for comment component.
  late CommentModel commentModel7;
  // Model for comment component.
  late CommentModel commentModel8;

  @override
  void initState(BuildContext context) {
    commentModel1 = createModel(context, () => CommentModel());
    commentModel2 = createModel(context, () => CommentModel());
    commentModel3 = createModel(context, () => CommentModel());
    commentModel4 = createModel(context, () => CommentModel());
    commentModel5 = createModel(context, () => CommentModel());
    commentModel6 = createModel(context, () => CommentModel());
    commentModel7 = createModel(context, () => CommentModel());
    commentModel8 = createModel(context, () => CommentModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    commentModel1.dispose();
    commentModel2.dispose();
    commentModel3.dispose();
    commentModel4.dispose();
    commentModel5.dispose();
    commentModel6.dispose();
    commentModel7.dispose();
    commentModel8.dispose();
  }
}
