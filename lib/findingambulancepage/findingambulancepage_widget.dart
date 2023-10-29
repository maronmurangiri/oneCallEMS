import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'findingambulancepage_model.dart';
export 'findingambulancepage_model.dart';

class FindingambulancepageWidget extends StatefulWidget {
  const FindingambulancepageWidget({
    Key? key,
    this.ambulancedetailsreference,
  }) : super(key: key);

  final DocumentReference? ambulancedetailsreference;

  @override
  _FindingambulancepageWidgetState createState() =>
      _FindingambulancepageWidgetState();
}

class _FindingambulancepageWidgetState
    extends State<FindingambulancepageWidget> {
  late FindingambulancepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FindingambulancepageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<LocateRecord>(
      stream: LocateRecord.getDocument(widget.ambulancedetailsreference!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final findingambulancepageLocateRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'DESTINATION',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Text(
                  '[Destination_AddressText]',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.1),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (!findingambulancepageLocateRecord.isDriverAssigned!)
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: custom_widgets.RouteViewStatic(
                            width: double.infinity,
                            height: double.infinity,
                            lineColor: Color(0xFF2D2A2A),
                            iOSGoogleMapsApiKey:
                                'AizaSyD_iAfD8VzXxTROb1Q3bQ885jahYZTZmoU',
                            androidGoogleMapsApiKey:
                                'AIzaSyDU1lG92SfQ2HI7Y2b1N_aeMS-hYXfeFXY',
                            webGoogleMapsApiKey:
                                'AIzaSyDDaRJ4toGApWDeWQZxHMGmQ3F11aiP408',
                            startAddress:
                                findingambulancepageLocateRecord.userAddress,
                            destinationAddress: findingambulancepageLocateRecord
                                .destinationAddress,
                            startCoordinate:
                                findingambulancepageLocateRecord.userLocation!,
                            endCoordinate: findingambulancepageLocateRecord
                                .destinationLocation!,
                          ),
                        ),
                      ),
                    if (!findingambulancepageLocateRecord.isDriverAssigned!)
                      Align(
                        alignment: AlignmentDirectional(-0.1, 0.65),
                        child: Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                          alignment: AlignmentDirectional(0.0, -0.25),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  'FindingRide',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (findingambulancepageLocateRecord.isDriverAssigned ??
                        true)
                      Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryColor,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Found Ambulance',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Icon(
                              Icons.settings_outlined,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    if (findingambulancepageLocateRecord.isDriverAssigned ??
                        true)
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        child: custom_widgets.RouteViewLive(
                          width: double.infinity,
                          height: 100.0,
                          lineColor: Color(0xFF151414),
                          startAddress: findingambulancepageLocateRecord
                              .destinationAddress,
                          destinationAddress:
                              findingambulancepageLocateRecord.userAddress,
                          iOSGoogleMapsApiKey:
                              'AizaSyD_iAfD8VzXxTROb1Q3bQ885jahYZTZmoU',
                          androidGoogleMapsApiKey:
                              'AIzaSyDU1lG92SfQ2HI7Y2b1N_aeMS-hYXfeFXY',
                          webGoogleMapsApiKey:
                              'AIzaSyDDaRJ4toGApWDeWQZxHMGmQ3F11aiP408',
                          rideDetailsReference:
                              findingambulancepageLocateRecord.reference,
                          endCoordinate:
                              findingambulancepageLocateRecord.userLocation!,
                          startCoordinate:
                              findingambulancepageLocateRecord.driverLocation!,
                        ),
                      ),
                    if (findingambulancepageLocateRecord.isDriverAssigned ??
                        true)
                      Container(
                        width: double.infinity,
                        height: 220.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Arriving in ',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(-0.25, 0.0),
                                    child: Container(
                                      width: 200.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFB3FF59),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      alignment: AlignmentDirectional(
                                          0.3999999999999999, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -0.1, -0.1),
                                              child: Text(
                                                FFAppState().routeDuration,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -0.2),
                                              child: Text(
                                                FFAppState().routeDistance,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1.0,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Icon(
                                    Icons.settings_outlined,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      findingambulancepageLocateRecord
                                          .driverNumber!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
