import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/findingambulancepage/findingambulancepage_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'userlocationpage_model.dart';
export 'userlocationpage_model.dart';

class UserlocationpageWidget extends StatefulWidget {
  const UserlocationpageWidget({Key? key}) : super(key: key);

  @override
  _UserlocationpageWidgetState createState() => _UserlocationpageWidgetState();
}

class _UserlocationpageWidgetState extends State<UserlocationpageWidget> {
  late UserlocationpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserlocationpageModel());
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

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: FlutterFlowPlacePicker(
          iOSGoogleMapsApiKey: 'AIzaSyD_iAfD8VzXxTROb1Q3bQ885jahYZTZmoU',
          androidGoogleMapsApiKey: 'AIzaSyDU1lG92SfQ2HI7Y2b1N_aeMS-hYXfeFXY',
          webGoogleMapsApiKey: 'AIzaSyDDaRJ4toGApWDeWQZxHMGmQ3F11aiP408',
          onSelect: (place) async {
            setState(() => _model.placePickerValue = place);
          },
          defaultText: 'Select Location',
          icon: Icon(
            Icons.place,
            color: Colors.white,
            size: 16.0,
          ),
          buttonOptions: FFButtonOptions(
            width: 200.0,
            height: 40.0,
            color: FlutterFlowTheme.of(context).primaryColor,
            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Align(
            alignment: AlignmentDirectional(0.0, -0.7),
            child: Stack(
              alignment: AlignmentDirectional(0.0, 1.0),
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowGoogleMap(
                    controller: _model.googleMapsController,
                    onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
                    initialLocation: _model.googleMapsCenter ??=
                        LatLng(13.106061, -59.613158),
                    markerColor: GoogleMarkerColor.violet,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.standard,
                    initialZoom: 14.0,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: true,
                    showCompass: false,
                    showMapToolbar: false,
                    showTraffic: false,
                    centerMapOnMarkerTap: true,
                  ),
                ),
                if (_model.placePickerValue.address != null &&
                    _model.placePickerValue.address != '')
                  Container(
                    width: double.infinity,
                    height: 170.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.network(
                              'https://picsum.photos/seed/807/600',
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'cab ',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.55, -0.75),
                              child: Text(
                                'money',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.0,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.network(
                              'https://picsum.photos/seed/834/600',
                              width: 100.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Hello World',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Icon(
                              Icons.settings_outlined,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ],
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            currentUserLocationValue =
                                await getCurrentUserLocation(
                                    defaultLocation: LatLng(0.0, 0.0));

                            final locateCreateData = createLocateRecordData(
                              userLocation: currentUserLocationValue,
                              userUid: currentUserUid,
                              destinationLocation:
                                  _model.placePickerValue.latLng,
                              destinationAddress:
                                  _model.placePickerValue.address,
                              registrationNumber: currentUserDisplayName,
                              isDriverAssigned: false,
                            );
                            var locateRecordReference =
                                LocateRecord.collection.doc();
                            await locateRecordReference.set(locateCreateData);
                            _model.userlocationdetails =
                                LocateRecord.getDocumentFromData(
                                    locateCreateData, locateRecordReference);
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: FindingambulancepageWidget(
                                  ambulancedetailsreference:
                                      _model.userlocationdetails!.reference,
                                ),
                              ),
                            );

                            setState(() {});
                          },
                          text: 'Call Ambulance',
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
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
  }
}
