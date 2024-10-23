import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'timeselector_widget.dart' show TimeselectorWidget;
import 'package:flutter/material.dart';

class TimeselectorModel extends FlutterFlowModel<TimeselectorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CarouselHr widget.
  CarouselSliderController? carouselHrController;
  int carouselHrCurrentIndex = 1;

  // State field(s) for CarouselMinutes widget.
  CarouselSliderController? carouselMinutesController;
  int carouselMinutesCurrentIndex = 1;

  // State field(s) for CarouselAMPm widget.
  CarouselSliderController? carouselAMPmController;
  int carouselAMPmCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
