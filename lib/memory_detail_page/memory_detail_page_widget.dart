import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

class MemoryDetailPageWidget extends StatefulWidget {
  const MemoryDetailPageWidget({
    Key? key,
    this.memory,
  }) : super(key: key);

  final dynamic memory;

  @override
  _MemoryDetailPageWidgetState createState() => _MemoryDetailPageWidgetState();
}

class _MemoryDetailPageWidgetState extends State<MemoryDetailPageWidget> {
  ApiCallResponse? speechUrl;
  AudioPlayer? soundPlayer;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).grayLight,
            size: 32,
          ),
        ),
        title: Text(
          'Memory Details',
          style: FlutterFlowTheme.of(context).title3,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      getJsonField(
                        widget.memory,
                        r'''$.Title''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      getJsonField(
                        widget.memory,
                        r'''$.description''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      speechUrl = await TextToSpeechCall.call(
                        text: getJsonField(
                          widget.memory,
                          r'''$.description''',
                        ).toString(),
                      );
                      soundPlayer ??= AudioPlayer();
                      if (soundPlayer!.playing) {
                        await soundPlayer!.stop();
                      }

                      soundPlayer!
                          .setUrl(getJsonField(
                            (speechUrl?.jsonBody ?? ''),
                            r'''$.audioURL''',
                          ))
                          .then((_) => soundPlayer!.play());

                      setState(() {});
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              color: Color(0xFF25AA41),
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x230E151B),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              getJsonField(
                                widget.memory,
                                r'''$.base64''',
                              ),
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Text(
                        'When',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    getJsonField(
                      widget.memory,
                      r'''$.date''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Outfit',
                          fontSize: 25,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 28, 0, 36),
              child: FFButtonWidget(
                onPressed: () {
                  print('ButtonPrimary pressed ...');
                },
                text: 'Edit Memory',
                options: FFButtonOptions(
                  width: 300,
                  height: 50,
                  color: Color(0xFF25AA41),
                  textStyle: FlutterFlowTheme.of(context).subtitle2,
                  elevation: 2,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
