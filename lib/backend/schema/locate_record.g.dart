// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locate_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocateRecord> _$locateRecordSerializer =
    new _$LocateRecordSerializer();

class _$LocateRecordSerializer implements StructuredSerializer<LocateRecord> {
  @override
  final Iterable<Type> types = const [LocateRecord, _$LocateRecord];
  @override
  final String wireName = 'LocateRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocateRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userLocation;
    if (value != null) {
      result
        ..add('user_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.userUid;
    if (value != null) {
      result
        ..add('user_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverLocation;
    if (value != null) {
      result
        ..add('driver_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.driverUid;
    if (value != null) {
      result
        ..add('driver_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.destinationLocation;
    if (value != null) {
      result
        ..add('destination_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.destinationAddress;
    if (value != null) {
      result
        ..add('destination_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userAddress;
    if (value != null) {
      result
        ..add('user_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.registrationNumber;
    if (value != null) {
      result
        ..add('registration_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverNumber;
    if (value != null) {
      result
        ..add('driver_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDriverAssigned;
    if (value != null) {
      result
        ..add('is_driver_assigned')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  LocateRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocateRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_location':
          result.userLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'user_uid':
          result.userUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_location':
          result.driverLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'driver_uid':
          result.driverUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'destination_location':
          result.destinationLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'destination_address':
          result.destinationAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_address':
          result.userAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'registration_number':
          result.registrationNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_number':
          result.driverNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_driver_assigned':
          result.isDriverAssigned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$LocateRecord extends LocateRecord {
  @override
  final LatLng? userLocation;
  @override
  final String? userUid;
  @override
  final LatLng? driverLocation;
  @override
  final String? driverUid;
  @override
  final LatLng? destinationLocation;
  @override
  final String? destinationAddress;
  @override
  final String? userAddress;
  @override
  final String? registrationNumber;
  @override
  final String? driverNumber;
  @override
  final bool? isDriverAssigned;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LocateRecord([void Function(LocateRecordBuilder)? updates]) =>
      (new LocateRecordBuilder()..update(updates))._build();

  _$LocateRecord._(
      {this.userLocation,
      this.userUid,
      this.driverLocation,
      this.driverUid,
      this.destinationLocation,
      this.destinationAddress,
      this.userAddress,
      this.registrationNumber,
      this.driverNumber,
      this.isDriverAssigned,
      this.ffRef})
      : super._();

  @override
  LocateRecord rebuild(void Function(LocateRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocateRecordBuilder toBuilder() => new LocateRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocateRecord &&
        userLocation == other.userLocation &&
        userUid == other.userUid &&
        driverLocation == other.driverLocation &&
        driverUid == other.driverUid &&
        destinationLocation == other.destinationLocation &&
        destinationAddress == other.destinationAddress &&
        userAddress == other.userAddress &&
        registrationNumber == other.registrationNumber &&
        driverNumber == other.driverNumber &&
        isDriverAssigned == other.isDriverAssigned &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, userLocation.hashCode),
                                            userUid.hashCode),
                                        driverLocation.hashCode),
                                    driverUid.hashCode),
                                destinationLocation.hashCode),
                            destinationAddress.hashCode),
                        userAddress.hashCode),
                    registrationNumber.hashCode),
                driverNumber.hashCode),
            isDriverAssigned.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocateRecord')
          ..add('userLocation', userLocation)
          ..add('userUid', userUid)
          ..add('driverLocation', driverLocation)
          ..add('driverUid', driverUid)
          ..add('destinationLocation', destinationLocation)
          ..add('destinationAddress', destinationAddress)
          ..add('userAddress', userAddress)
          ..add('registrationNumber', registrationNumber)
          ..add('driverNumber', driverNumber)
          ..add('isDriverAssigned', isDriverAssigned)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LocateRecordBuilder
    implements Builder<LocateRecord, LocateRecordBuilder> {
  _$LocateRecord? _$v;

  LatLng? _userLocation;
  LatLng? get userLocation => _$this._userLocation;
  set userLocation(LatLng? userLocation) => _$this._userLocation = userLocation;

  String? _userUid;
  String? get userUid => _$this._userUid;
  set userUid(String? userUid) => _$this._userUid = userUid;

  LatLng? _driverLocation;
  LatLng? get driverLocation => _$this._driverLocation;
  set driverLocation(LatLng? driverLocation) =>
      _$this._driverLocation = driverLocation;

  String? _driverUid;
  String? get driverUid => _$this._driverUid;
  set driverUid(String? driverUid) => _$this._driverUid = driverUid;

  LatLng? _destinationLocation;
  LatLng? get destinationLocation => _$this._destinationLocation;
  set destinationLocation(LatLng? destinationLocation) =>
      _$this._destinationLocation = destinationLocation;

  String? _destinationAddress;
  String? get destinationAddress => _$this._destinationAddress;
  set destinationAddress(String? destinationAddress) =>
      _$this._destinationAddress = destinationAddress;

  String? _userAddress;
  String? get userAddress => _$this._userAddress;
  set userAddress(String? userAddress) => _$this._userAddress = userAddress;

  String? _registrationNumber;
  String? get registrationNumber => _$this._registrationNumber;
  set registrationNumber(String? registrationNumber) =>
      _$this._registrationNumber = registrationNumber;

  String? _driverNumber;
  String? get driverNumber => _$this._driverNumber;
  set driverNumber(String? driverNumber) => _$this._driverNumber = driverNumber;

  bool? _isDriverAssigned;
  bool? get isDriverAssigned => _$this._isDriverAssigned;
  set isDriverAssigned(bool? isDriverAssigned) =>
      _$this._isDriverAssigned = isDriverAssigned;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LocateRecordBuilder() {
    LocateRecord._initializeBuilder(this);
  }

  LocateRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userLocation = $v.userLocation;
      _userUid = $v.userUid;
      _driverLocation = $v.driverLocation;
      _driverUid = $v.driverUid;
      _destinationLocation = $v.destinationLocation;
      _destinationAddress = $v.destinationAddress;
      _userAddress = $v.userAddress;
      _registrationNumber = $v.registrationNumber;
      _driverNumber = $v.driverNumber;
      _isDriverAssigned = $v.isDriverAssigned;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocateRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocateRecord;
  }

  @override
  void update(void Function(LocateRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocateRecord build() => _build();

  _$LocateRecord _build() {
    final _$result = _$v ??
        new _$LocateRecord._(
            userLocation: userLocation,
            userUid: userUid,
            driverLocation: driverLocation,
            driverUid: driverUid,
            destinationLocation: destinationLocation,
            destinationAddress: destinationAddress,
            userAddress: userAddress,
            registrationNumber: registrationNumber,
            driverNumber: driverNumber,
            isDriverAssigned: isDriverAssigned,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
