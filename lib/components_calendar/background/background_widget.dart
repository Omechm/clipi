import '/components_calendar/hour_background/hour_background_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'background_model.dart';
export 'background_model.dart';

class BackgroundWidget extends StatefulWidget {
  const BackgroundWidget({super.key});

  @override
  State<BackgroundWidget> createState() => _BackgroundWidgetState();
}

class _BackgroundWidgetState extends State<BackgroundWidget> {
  late BackgroundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackgroundModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, -1.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            wrapWithModel(
              model: _model.hourBackgroundModel1,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '09:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel2,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '10:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel3,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '11:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel4,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '12:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel5,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '13:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel6,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '14:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel7,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '15:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel8,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '16:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel9,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '17:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel10,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '18:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel11,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '19:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel12,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '20:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel13,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '21:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel14,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '22:00',
              ),
            ),
            wrapWithModel(
              model: _model.hourBackgroundModel15,
              updateCallback: () => safeSetState(() {}),
              child: HourBackgroundWidget(
                time: '23:00',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
