import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_members_model.dart';
export 'all_members_model.dart';

class AllMembersWidget extends StatefulWidget {
  const AllMembersWidget({super.key});

  @override
  State<AllMembersWidget> createState() => _AllMembersWidgetState();
}

class _AllMembersWidgetState extends State<AllMembersWidget> {
  late AllMembersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllMembersModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
          child: Text(
            'All Members',
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: 'sf pro normal 400',
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts:
                      GoogleFonts.asMap().containsKey('sf pro normal 400'),
                ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 53.0,
                  height: 53.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E5F0),
                    borderRadius: BorderRadius.circular(56.5),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: const AlignmentDirectional(0.0, 0.0),
              children: [
                Container(
                  width: 53.0,
                  height: 53.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Rectangle.png',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Icon_(1).png',
                    width: 17.0,
                    height: 17.0,
                    fit: BoxFit.cover,
                    alignment: const Alignment(0.0, 0.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
