import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'tets_widget.dart' show TetsWidget;
import 'package:flutter/material.dart';

class TetsModel extends FlutterFlowModel<TetsWidget> {
  ///  Local state fields for this page.

  int? hrrrr;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
