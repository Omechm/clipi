import '/components_calendar/hour_background/hour_background_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, -1.0),
        child: Builder(
          builder: (context) {
            final timeListChildren = FFAppState().timeList12Hr.toList();

            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(timeListChildren.length,
                  (timeListChildrenIndex) {
                final timeListChildrenItem =
                    timeListChildren[timeListChildrenIndex];
                return wrapWithModel(
                  model: _model.hourBackgroundModels.getModel(
                    timeListChildrenItem,
                    timeListChildrenIndex,
                  ),
                  updateCallback: () => safeSetState(() {}),
                  child: HourBackgroundWidget(
                    key: Key(
                      'Keyyvw_${timeListChildrenItem}',
                    ),
                    time: timeListChildrenItem,
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
