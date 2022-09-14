// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResuestlistResponse _$ResuestlistResponseFromJson(Map<String, dynamic> json) {
  return _ResuestlistResponse.fromJson(json);
}

/// @nodoc
mixin _$ResuestlistResponse {
  List<ResuestlistResponse> get reuestedRideData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResuestlistResponseCopyWith<ResuestlistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResuestlistResponseCopyWith<$Res> {
  factory $ResuestlistResponseCopyWith(
          ResuestlistResponse value, $Res Function(ResuestlistResponse) then) =
      _$ResuestlistResponseCopyWithImpl<$Res>;
  $Res call({List<ResuestlistResponse> reuestedRideData});
}

/// @nodoc
class _$ResuestlistResponseCopyWithImpl<$Res>
    implements $ResuestlistResponseCopyWith<$Res> {
  _$ResuestlistResponseCopyWithImpl(this._value, this._then);

  final ResuestlistResponse _value;
  // ignore: unused_field
  final $Res Function(ResuestlistResponse) _then;

  @override
  $Res call({
    Object? reuestedRideData = freezed,
  }) {
    return _then(_value.copyWith(
      reuestedRideData: reuestedRideData == freezed
          ? _value.reuestedRideData
          : reuestedRideData // ignore: cast_nullable_to_non_nullable
              as List<ResuestlistResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_ResuestlistResponseCopyWith<$Res>
    implements $ResuestlistResponseCopyWith<$Res> {
  factory _$$_ResuestlistResponseCopyWith(_$_ResuestlistResponse value,
          $Res Function(_$_ResuestlistResponse) then) =
      __$$_ResuestlistResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<ResuestlistResponse> reuestedRideData});
}

/// @nodoc
class __$$_ResuestlistResponseCopyWithImpl<$Res>
    extends _$ResuestlistResponseCopyWithImpl<$Res>
    implements _$$_ResuestlistResponseCopyWith<$Res> {
  __$$_ResuestlistResponseCopyWithImpl(_$_ResuestlistResponse _value,
      $Res Function(_$_ResuestlistResponse) _then)
      : super(_value, (v) => _then(v as _$_ResuestlistResponse));

  @override
  _$_ResuestlistResponse get _value => super._value as _$_ResuestlistResponse;

  @override
  $Res call({
    Object? reuestedRideData = freezed,
  }) {
    return _then(_$_ResuestlistResponse(
      reuestedRideData: reuestedRideData == freezed
          ? _value._reuestedRideData
          : reuestedRideData // ignore: cast_nullable_to_non_nullable
              as List<ResuestlistResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResuestlistResponse implements _ResuestlistResponse {
  const _$_ResuestlistResponse(
      {required final List<ResuestlistResponse> reuestedRideData})
      : _reuestedRideData = reuestedRideData;

  factory _$_ResuestlistResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ResuestlistResponseFromJson(json);

  final List<ResuestlistResponse> _reuestedRideData;
  @override
  List<ResuestlistResponse> get reuestedRideData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reuestedRideData);
  }

  @override
  String toString() {
    return 'ResuestlistResponse(reuestedRideData: $reuestedRideData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResuestlistResponse &&
            const DeepCollectionEquality()
                .equals(other._reuestedRideData, _reuestedRideData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reuestedRideData));

  @JsonKey(ignore: true)
  @override
  _$$_ResuestlistResponseCopyWith<_$_ResuestlistResponse> get copyWith =>
      __$$_ResuestlistResponseCopyWithImpl<_$_ResuestlistResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResuestlistResponseToJson(
      this,
    );
  }
}

abstract class _ResuestlistResponse implements ResuestlistResponse {
  const factory _ResuestlistResponse(
          {required final List<ResuestlistResponse> reuestedRideData}) =
      _$_ResuestlistResponse;

  factory _ResuestlistResponse.fromJson(Map<String, dynamic> json) =
      _$_ResuestlistResponse.fromJson;

  @override
  List<ResuestlistResponse> get reuestedRideData;
  @override
  @JsonKey(ignore: true)
  _$$_ResuestlistResponseCopyWith<_$_ResuestlistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Resuestlist _$ResuestlistFromJson(Map<String, dynamic> json) {
  return _Resuestlist.fromJson(json);
}

/// @nodoc
mixin _$Resuestlist {
  String get id => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  String get pick_up_address => throw _privateConstructorUsedError;
  String get drop_off_address => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResuestlistCopyWith<Resuestlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResuestlistCopyWith<$Res> {
  factory $ResuestlistCopyWith(
          Resuestlist value, $Res Function(Resuestlist) then) =
      _$ResuestlistCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String created,
      String updated,
      String pick_up_address,
      String drop_off_address,
      String price,
      String status});
}

/// @nodoc
class _$ResuestlistCopyWithImpl<$Res> implements $ResuestlistCopyWith<$Res> {
  _$ResuestlistCopyWithImpl(this._value, this._then);

  final Resuestlist _value;
  // ignore: unused_field
  final $Res Function(Resuestlist) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? pick_up_address = freezed,
    Object? drop_off_address = freezed,
    Object? price = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      pick_up_address: pick_up_address == freezed
          ? _value.pick_up_address
          : pick_up_address // ignore: cast_nullable_to_non_nullable
              as String,
      drop_off_address: drop_off_address == freezed
          ? _value.drop_off_address
          : drop_off_address // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ResuestlistCopyWith<$Res>
    implements $ResuestlistCopyWith<$Res> {
  factory _$$_ResuestlistCopyWith(
          _$_Resuestlist value, $Res Function(_$_Resuestlist) then) =
      __$$_ResuestlistCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String created,
      String updated,
      String pick_up_address,
      String drop_off_address,
      String price,
      String status});
}

/// @nodoc
class __$$_ResuestlistCopyWithImpl<$Res> extends _$ResuestlistCopyWithImpl<$Res>
    implements _$$_ResuestlistCopyWith<$Res> {
  __$$_ResuestlistCopyWithImpl(
      _$_Resuestlist _value, $Res Function(_$_Resuestlist) _then)
      : super(_value, (v) => _then(v as _$_Resuestlist));

  @override
  _$_Resuestlist get _value => super._value as _$_Resuestlist;

  @override
  $Res call({
    Object? id = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? pick_up_address = freezed,
    Object? drop_off_address = freezed,
    Object? price = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_Resuestlist(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      pick_up_address: pick_up_address == freezed
          ? _value.pick_up_address
          : pick_up_address // ignore: cast_nullable_to_non_nullable
              as String,
      drop_off_address: drop_off_address == freezed
          ? _value.drop_off_address
          : drop_off_address // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Resuestlist implements _Resuestlist {
  const _$_Resuestlist(
      {required this.id,
      required this.created,
      required this.updated,
      required this.pick_up_address,
      required this.drop_off_address,
      required this.price,
      required this.status});

  factory _$_Resuestlist.fromJson(Map<String, dynamic> json) =>
      _$$_ResuestlistFromJson(json);

  @override
  final String id;
  @override
  final String created;
  @override
  final String updated;
  @override
  final String pick_up_address;
  @override
  final String drop_off_address;
  @override
  final String price;
  @override
  final String status;

  @override
  String toString() {
    return 'Resuestlist(id: $id, created: $created, updated: $updated, pick_up_address: $pick_up_address, drop_off_address: $drop_off_address, price: $price, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Resuestlist &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.updated, updated) &&
            const DeepCollectionEquality()
                .equals(other.pick_up_address, pick_up_address) &&
            const DeepCollectionEquality()
                .equals(other.drop_off_address, drop_off_address) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(updated),
      const DeepCollectionEquality().hash(pick_up_address),
      const DeepCollectionEquality().hash(drop_off_address),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ResuestlistCopyWith<_$_Resuestlist> get copyWith =>
      __$$_ResuestlistCopyWithImpl<_$_Resuestlist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResuestlistToJson(
      this,
    );
  }
}

abstract class _Resuestlist implements Resuestlist {
  const factory _Resuestlist(
      {required final String id,
      required final String created,
      required final String updated,
      required final String pick_up_address,
      required final String drop_off_address,
      required final String price,
      required final String status}) = _$_Resuestlist;

  factory _Resuestlist.fromJson(Map<String, dynamic> json) =
      _$_Resuestlist.fromJson;

  @override
  String get id;
  @override
  String get created;
  @override
  String get updated;
  @override
  String get pick_up_address;
  @override
  String get drop_off_address;
  @override
  String get price;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_ResuestlistCopyWith<_$_Resuestlist> get copyWith =>
      throw _privateConstructorUsedError;
}
