import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'checking_user_role_model.dart';
export 'checking_user_role_model.dart';

class CheckingUserRoleWidget extends StatefulWidget {
  const CheckingUserRoleWidget({super.key});

  static String routeName = 'checkingUserRole';
  static String routePath = '/checkingUserRole';

  @override
  State<CheckingUserRoleWidget> createState() => _CheckingUserRoleWidgetState();
}

class _CheckingUserRoleWidgetState extends State<CheckingUserRoleWidget> {
  late CheckingUserRoleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckingUserRoleModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.outputIsBarber = await actions.isBarber();
      FFAppState().ProfileBarber = _model.outputIsBarber!;
      safeSetState(() {});
      _model.outputUserRoleAssignmentEmailLogin =
          await RoleAssignmentsTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'profile_id',
          currentUserUid,
        ),
      );
      _model.outputUserProfile = await ProfilesTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          currentUserUid,
        ),
      );
      FFAppState().userProfile = [];
      safeSetState(() {});
      FFAppState().addToUserProfile(UserProfileDTStruct(
        id: _model.outputUserProfile?.firstOrNull?.id,
        fullName: _model.outputUserProfile?.firstOrNull?.fullName,
        phone: _model.outputUserProfile?.firstOrNull?.phone,
        avatarUrl: _model.outputUserProfile?.firstOrNull?.avatarUrl,
        createdAt: _model.outputUserProfile?.firstOrNull?.createdAt?.toString(),
        code: _model.outputUserProfile?.firstOrNull?.code?.toString(),
      ));
      safeSetState(() {});
      if (FFAppState().ProfileBarber) {
        context.pushNamedAuth(HomeProWidget.routeName, context.mounted);
      } else {
        if (_model.outputUserRoleAssignmentEmailLogin?.length == 0) {
          context.goNamedAuth(
            ChooseProfileWidget.routeName,
            context.mounted,
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );
        } else {
          if (_model.outputUserRoleAssignmentEmailLogin?.firstOrNull?.roleId ==
              'b02446df-494c-4ffe-b448-9a586dee4770') {
            context.pushNamedAuth(HomeWidget.routeName, context.mounted);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'You are not authorised to use this app',
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
                duration: Duration(milliseconds: 4000),
                backgroundColor: FlutterFlowTheme.of(context).error,
              ),
            );
            GoRouter.of(context).prepareAuthEvent();
            await authManager.signOut();
            GoRouter.of(context).clearRedirectLocation();
          }
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
