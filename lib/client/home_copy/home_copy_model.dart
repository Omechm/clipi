import '/components/side_bar_client_widget.dart';
import '/components_app/templates/templates_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_copy_widget.dart' show HomeCopyWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCopyModel extends FlutterFlowModel<HomeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for Templates component.
  late TemplatesModel templatesModel1;
  // Model for Templates component.
  late TemplatesModel templatesModel2;
  // Model for Templates component.
  late TemplatesModel templatesModel3;
  // Model for SideBarClient component.
  late SideBarClientModel sideBarClientModel;

  @override
  void initState(BuildContext context) {
    templatesModel1 = createModel(context, () => TemplatesModel());
    templatesModel2 = createModel(context, () => TemplatesModel());
    templatesModel3 = createModel(context, () => TemplatesModel());
    sideBarClientModel = createModel(context, () => SideBarClientModel());
  }

  @override
  void dispose() {
    templatesModel1.dispose();
    templatesModel2.dispose();
    templatesModel3.dispose();
    sideBarClientModel.dispose();
  }
}
