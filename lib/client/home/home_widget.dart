import '/components/side_bar_client_widget.dart';
import '/components_app/barbers/barbers_widget.dart';
import '/components_app/services/services_widget.dart';
import '/components_app/templates/templates_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  static String routeName = 'Home';
  static String routePath = '/home';

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Opacity(
          opacity: 0.9,
          child: Drawer(
            elevation: 16.0,
            child: Container(
              decoration: BoxDecoration(),
              child: wrapWithModel(
                model: _model.sideBarClientModel,
                updateCallback: () => safeSetState(() {}),
                child: SideBarClientWidget(),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFD5A453),
                      FlutterFlowTheme.of(context).primaryBackground
                    ],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 42.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              scaffoldKey.currentState!.openDrawer();
                            },
                            child: Icon(
                              Icons.menu_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              Theme.of(context).brightness == Brightness.dark
                                  ? 'assets/images/Novo_projeto_50.png'
                                  : 'assets/images/Novo_projeto_51.png',
                              width: 208.0,
                              height: 77.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).fillColor3,
                              shape: BoxShape.circle,
                            ),
                            child: badges.Badge(
                              badgeContent: Text(
                                FFLocalizations.of(context).getText(
                                  'jyzftnox' /* 5 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                              ),
                              showBadge: true,
                              shape: badges.BadgeShape.circle,
                              badgeColor: FlutterFlowTheme.of(context).error,
                              elevation: 4.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              position: badges.BadgePosition.topEnd(),
                              animationType: badges.BadgeAnimationType.scale,
                              toAnimate: true,
                              child: Icon(
                                Icons.notifications_none,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 22.0,
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 20.0),
                child: Container(
                  width: double.infinity,
                  height: 156.0,
                  child: CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1599351431613-18ef1fdd27e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMXx8YmFyYmVyfGVufDB8fHx8MTcwMjY2NzY4OHww&ixlib=rb-4.0.3&q=80&w=1080',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(ResearchMapProfWidget.routeName);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1519500528352-2d1460418d41?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNnx8YmFyYmVyfGVufDB8fHx8MTcwMjY2NzY4OHww&ixlib=rb-4.0.3&q=80&w=1080',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1587909209111-5097ee578ec3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxiYXJiZXJ8ZW58MHx8fHwxNzAyNjY3Njg4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1605497788044-5a32c7078486?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxiYXJiZXJ8ZW58MHx8fHwxNzAyNjY3Njg4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                    carouselController: _model.carouselController ??=
                        CarouselSliderController(),
                    options: CarouselOptions(
                      initialPage: 1,
                      viewportFraction: 1.0,
                      disableCenter: true,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.25,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 300),
                      autoPlayInterval: Duration(milliseconds: (300 + 2500)),
                      autoPlayCurve: Curves.linear,
                      pauseAutoPlayInFiniteScroll: true,
                      onPageChanged: (index, _) =>
                          _model.carouselCurrentIndex = index,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'u30w9nxi' /* Services */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      wrapWithModel(
                        model: _model.servicesModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: ServicesWidget(
                          hairCut: 'Side Part',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.servicesModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: ServicesWidget(
                          hairCut: 'Pompadour',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.servicesModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: ServicesWidget(
                          hairCut: 'Fade Cut',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.servicesModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: ServicesWidget(
                          hairCut: 'Goatee',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.servicesModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: ServicesWidget(
                          hairCut: 'Extended Goatee',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.servicesModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: ServicesWidget(
                          hairCut: 'Crew Cut',
                        ),
                      ),
                    ]
                        .divide(SizedBox(width: 12.0))
                        .around(SizedBox(width: 12.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ob6ec8ip' /* Our Portfolios */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        wrapWithModel(
                          model: _model.templatesModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: TemplatesWidget(
                            hairCuts: 'High and Tight',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.templatesModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: TemplatesWidget(
                            hairCuts: 'Side Part',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.templatesModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: TemplatesWidget(
                            hairCuts: 'Faux Hawk',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.templatesModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: TemplatesWidget(
                            hairCuts: 'Ivy League Cut',
                          ),
                        ),
                      ]
                          .divide(SizedBox(width: 12.0))
                          .around(SizedBox(width: 12.0)),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '5206ze4e' /* Barbers */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        wrapWithModel(
                          model: _model.barbersModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: BarbersWidget(
                            barber: 'Adam',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.barbersModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: BarbersWidget(
                            barber: 'Sid',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.barbersModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: BarbersWidget(
                            barber: 'Parker',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.barbersModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: BarbersWidget(
                            barber: 'Arthur M.',
                          ),
                        ),
                      ]
                          .divide(SizedBox(width: 12.0))
                          .around(SizedBox(width: 12.0)),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100.0,
                height: 110.0,
                decoration: BoxDecoration(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
