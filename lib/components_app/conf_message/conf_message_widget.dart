import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'conf_message_model.dart';
export 'conf_message_model.dart';

class ConfMessageWidget extends StatefulWidget {
  const ConfMessageWidget({super.key});

  @override
  State<ConfMessageWidget> createState() => _ConfMessageWidgetState();
}

class _ConfMessageWidgetState extends State<ConfMessageWidget> {
  late ConfMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfMessageModel());

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
      width: 250.0,
      height: 235.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.verified_sharp,
            color: FlutterFlowTheme.of(context).primary,
            size: 24.0,
          ),
          Text(
            FFLocalizations.of(context).getText(
              'bgsp793p' /* Registration Completed! */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: FFLocalizations.of(context).getText(
                      'dpvobod7' /* 
Leonardo,  */
                      ,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 11.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  TextSpan(
                    text: FFLocalizations.of(context).getText(
                      'ora60gio' /* You have an appointment schedu... */,
                    ),
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                  TextSpan(
                    text: FFLocalizations.of(context).getText(
                      'hh13ilwt' /* Matthew  */,
                    ),
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                  TextSpan(
                    text: FFLocalizations.of(context).getText(
                      'bkyo1okv' /* on  */,
                    ),
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                  TextSpan(
                    text: FFLocalizations.of(context).getText(
                      '2v9yd459' /* January 30th at 2:00 PM  */,
                    ),
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                  TextSpan(
                    text: FFLocalizations.of(context).getText(
                      'vuv6lgv2' /* for a hair cutting service. */,
                    ),
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                  TextSpan(
                    text: FFLocalizations.of(context).getText(
                      'yjgu8ite' /* 

Thank you for your choice! W... */
                      ,
                    ),
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.poppins(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      fontSize: 9.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
