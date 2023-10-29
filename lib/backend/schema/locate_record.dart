import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'locate_record.g.dart';

abstract class LocateRecord
    implements Built<LocateRecord, LocateRecordBuilder> {
  static Serializer<LocateRecord> get serializer => _$locateRecordSerializer;

  @BuiltValueField(wireName: 'user_location')
  LatLng? get userLocation;

  @BuiltValueField(wireName: 'user_uid')
  String? get userUid;

  @BuiltValueField(wireName: 'driver_location')
  LatLng? get driverLocation;

  @BuiltValueField(wireName: 'driver_uid')
  String? get driverUid;

  @BuiltValueField(wireName: 'destination_location')
  LatLng? get destinationLocation;

  @BuiltValueField(wireName: 'destination_address')
  String? get destinationAddress;

  @BuiltValueField(wireName: 'user_address')
  String? get userAddress;

  @BuiltValueField(wireName: 'registration_number')
  String? get registrationNumber;

  @BuiltValueField(wireName: 'driver_number')
  String? get driverNumber;

  @BuiltValueField(wireName: 'is_driver_assigned')
  bool? get isDriverAssigned;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LocateRecordBuilder builder) => builder
    ..userUid = ''
    ..driverUid = ''
    ..destinationAddress = ''
    ..userAddress = ''
    ..registrationNumber = ''
    ..driverNumber = ''
    ..isDriverAssigned = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locate');

  static Stream<LocateRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LocateRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LocateRecord._();
  factory LocateRecord([void Function(LocateRecordBuilder) updates]) =
      _$LocateRecord;

  static LocateRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLocateRecordData({
  LatLng? userLocation,
  String? userUid,
  LatLng? driverLocation,
  String? driverUid,
  LatLng? destinationLocation,
  String? destinationAddress,
  String? userAddress,
  String? registrationNumber,
  String? driverNumber,
  bool? isDriverAssigned,
}) {
  final firestoreData = serializers.toFirestore(
    LocateRecord.serializer,
    LocateRecord(
      (l) => l
        ..userLocation = userLocation
        ..userUid = userUid
        ..driverLocation = driverLocation
        ..driverUid = driverUid
        ..destinationLocation = destinationLocation
        ..destinationAddress = destinationAddress
        ..userAddress = userAddress
        ..registrationNumber = registrationNumber
        ..driverNumber = driverNumber
        ..isDriverAssigned = isDriverAssigned,
    ),
  );

  return firestoreData;
}
