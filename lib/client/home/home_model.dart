import '/components/side_bar_client_widget.dart';
import '/components_app/services/services_widget.dart';
import '/components_app/templates/templates_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for Services component.
  late ServicesModel servicesModel1;
  // Model for Services component.
  late ServicesModel servicesModel2;
  // Model for Services component.
  late ServicesModel servicesModel3;
  // Model for Services component.
  late ServicesModel servicesModel4;
  // Model for Services component.
  late ServicesModel servicesModel5;
  // Model for Services component.
  late ServicesModel servicesModel6;
  // Model for Templates component.
  late TemplatesModel templatesModel1;
  // Model for Templates component.
  late TemplatesModel templatesModel2;
  // Model for Templates component.
  late TemplatesModel templatesModel3;
  // Model for Templates component.
  late TemplatesModel templatesModel4;
  // Model for SideBarClient component.
  late SideBarClientModel sideBarClientModel;

  @override
  void initState(BuildContext context) {
    servicesModel1 = createModel(context, () => ServicesModel());
    servicesModel2 = createModel(context, () => ServicesModel());
    servicesModel3 = createModel(context, () => ServicesModel());
    servicesModel4 = createModel(context, () => ServicesModel());
    servicesModel5 = createModel(context, () => ServicesModel());
    servicesModel6 = createModel(context, () => ServicesModel());
    templatesModel1 = createModel(context, () => TemplatesModel());
    templatesModel2 = createModel(context, () => TemplatesModel());
    templatesModel3 = createModel(context, () => TemplatesModel());
    templatesModel4 = createModel(context, () => TemplatesModel());
    sideBarClientModel = createModel(context, () => SideBarClientModel());
  }

  @override
  void dispose() {
    servicesModel1.dispose();
    servicesModel2.dispose();
    servicesModel3.dispose();
    servicesModel4.dispose();
    servicesModel5.dispose();
    servicesModel6.dispose();
    templatesModel1.dispose();
    templatesModel2.dispose();
    templatesModel3.dispose();
    templatesModel4.dispose();
    sideBarClientModel.dispose();
  }
}
