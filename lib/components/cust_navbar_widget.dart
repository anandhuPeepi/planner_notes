import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cust_navbar_model.dart';
export 'cust_navbar_model.dart';

class CustNavbarWidget extends StatefulWidget {
  const CustNavbarWidget({
    super.key,
    required this.pageName,
  });

  final String? pageName;

  @override
  State<CustNavbarWidget> createState() => _CustNavbarWidgetState();
}

class _CustNavbarWidgetState extends State<CustNavbarWidget> {
  late CustNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustNavbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 60.0,
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    buttonSize: 55.0,
                    icon: Icon(
                      Icons.home_outlined,
                      color: valueOrDefault<Color>(
                        widget.pageName == 'homePage'
                            ? const Color(0xFF88D7E2)
                            : const Color(0xFFD6DDDE),
                        FlutterFlowTheme.of(context).secondaryText,
                      ),
                      size: 40.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'HomePage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    buttonSize: 50.0,
                    icon: FaIcon(
                      FontAwesomeIcons.solidCalendar,
                      color: valueOrDefault<Color>(
                        widget.pageName == 'Calender'
                            ? const Color(0xFF88D7E2)
                            : const Color(0xFFD6DDDE),
                        FlutterFlowTheme.of(context).secondaryText,
                      ),
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'calender',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    buttonSize: 50.0,
                    icon: FaIcon(
                      FontAwesomeIcons.bell,
                      color: valueOrDefault<Color>(
                        widget.pageName == 'myEvents'
                            ? const Color(0xFF88D7E2)
                            : const Color(0xFFD6DDDE),
                        FlutterFlowTheme.of(context).secondaryText,
                      ),
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'Myevents',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.person_sharp,
                      color: valueOrDefault<Color>(
                        widget.pageName == 'profile'
                            ? const Color(0xFF88D7E2)
                            : const Color(0xFFD6DDDE),
                        FlutterFlowTheme.of(context).secondaryText,
                      ),
                      size: 35.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'profile',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
