// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ride_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RideResponse _$RideResponseFromJson(Map<String, dynamic> json) {
  return _RideResponse.fromJson(json);
}

/// @nodoc
mixin _$RideResponse {
  String get id => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  String get pick_up_address => throw _privateConstructorUsedError;
  String get drop_off_address => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideResponseCopyWith<RideResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideResponseCopyWith<$Res> {
  factory $RideResponseCopyWith(
          RideResponse value, $Res Function(RideResponse) then) =
      _$RideResponseCopyWithImpl<$Res>;
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
class _$RideResponseCopyWithImpl<$Res> implements $RideResponseCopyWith<$Res> {
  _$RideResponseCopyWithImpl(this._value, this._then);

  final RideResponse _value;
  // ignore: unused_field
  final $Res Function(RideResponse) _then;

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
abstract class _$$_RideResponseCopyWith<$Res>
    implements $RideResponseCopyWith<$Res> {
  factory _$$_RideResponseCopyWith(
          _$_RideResponse value, $Res Function(_$_RideResponse) then) =
      __$$_RideResponseCopyWithImpl<$Res>;
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
class __$$_RideResponseCopyWithImpl<$Res>
    extends _$RideResponseCopyWithImpl<$Res>
    implements _$$_RideResponseCopyWith<$Res> {
  __$$_RideResponseCopyWithImpl(
      _$_RideResponse _value, $Res Function(_$_RideResponse) _then)
      : super(_value, (v) => _then(v as _$_RideResponse));

  @override
  _$_RideResponse get _value => super._value as _$_RideResponse;

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
    return _then(_$_RideResponse(
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
class _$_RideResponse implements _RideResponse {
  const _$_RideResponse(
      {required this.id,
      required this.created,
      required this.updated,
      required this.pick_up_address,
      required this.drop_off_address,
      required this.price,
      required this.status});

  factory _$_RideResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RideResponseFromJson(json);

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
    return 'RideResponse(id: $id, created: $created, updated: $updated, pick_up_address: $pick_up_address, drop_off_address: $drop_off_address, price: $price, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RideResponse &&
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
  _$$_RideResponseCopyWith<_$_RideResponse> get copyWith =>
      __$$_RideResponseCopyWithImpl<_$_RideResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RideResponseToJson(
      this,
    );
  }
}

abstract class _RideResponse implements RideResponse {
  const factory _RideResponse(
      {required final String id,
      required final String created,
      required final String updated,
      required final String pick_up_address,
      required final String drop_off_address,
      required final String price,
      required final String status}) = _$_RideResponse;

  factory _RideResponse.fromJson(Map<String, dynamic> json) =
      _$_RideResponse.fromJson;

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
  _$$_RideResponseCopyWith<_$_RideResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
