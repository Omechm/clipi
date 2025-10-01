import '/components_app/quick_reminder/quick_reminder_widget.dart';
import '/components_app/send/send_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'booking_cancel_widget.dart' show BookingCancelWidget;
import 'package:flutter/material.dart';

class BookingCancelModel extends FlutterFlowModel<BookingCancelWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for quickReminder component.
  late QuickReminderModel quickReminderModel;
  // Model for send component.
  late SendModel sendModel;

  @override
  void initState(BuildContext context) {
    quickReminderModel = createModel(context, () => QuickReminderModel());
    sendModel = createModel(context, () => SendModel());
  }

  @override
  void dispose() {
    quickReminderModel.dispose();
    sendModel.dispose();
  }
}
