import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'now_line_model.dart';
export 'now_line_model.dart';

class NowLineWidget extends StatefulWidget {
  const NowLineWidget({
    super.key,
    this.height,
  });

  final int? height;

  @override
  State<NowLineWidget> createState() => _NowLineWidgetState();
}

class _NowLineWidgetState extends State<NowLineWidget> {
  late NowLineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NowLineModel());

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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: widget.height?.toDouble(),
            decoration: BoxDecoration(
              color: Color(0x00A13030),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.03,
                height: MediaQuery.sizeOf(context).width * 0.03,
                decoration: BoxDecoration(
                  color: Color(0xFF976512),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.95,
                height: 2.0,
                decoration: BoxDecoration(
                  color: Color(0xFF976512),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
