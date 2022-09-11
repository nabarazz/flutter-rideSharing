// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ride_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RideRequest _$RideRequestFromJson(Map<String, dynamic> json) {
  return _RideRequest.fromJson(json);
}

/// @nodoc
mixin _$RideRequest {
  String get pick_up_address => throw _privateConstructorUsedError;
  String get drop_off_address => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideRequestCopyWith<RideRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideRequestCopyWith<$Res> {
  factory $RideRequestCopyWith(
          RideRequest value, $Res Function(RideRequest) then) =
      _$RideRequestCopyWithImpl<$Res>;
  $Res call(
      {String pick_up_address,
      String drop_off_address,
      String price,
      String status});
}

/// @nodoc
class _$RideRequestCopyWithImpl<$Res> implements $RideRequestCopyWith<$Res> {
  _$RideRequestCopyWithImpl(this._value, this._then);

  final RideRequest _value;
  // ignore: unused_field
  final $Res Function(RideRequest) _then;

  @override
  $Res call({
    Object? pick_up_address = freezed,
    Object? drop_off_address = freezed,
    Object? price = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_RideRequestCopyWith<$Res>
    implements $RideRequestCopyWith<$Res> {
  factory _$$_RideRequestCopyWith(
          _$_RideRequest value, $Res Function(_$_RideRequest) then) =
      __$$_RideRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String pick_up_address,
      String drop_off_address,
      String price,
      String status});
}

/// @nodoc
class __$$_RideRequestCopyWithImpl<$Res> extends _$RideRequestCopyWithImpl<$Res>
    implements _$$_RideRequestCopyWith<$Res> {
  __$$_RideRequestCopyWithImpl(
      _$_RideRequest _value, $Res Function(_$_RideRequest) _then)
      : super(_value, (v) => _then(v as _$_RideRequest));

  @override
  _$_RideRequest get _value => super._value as _$_RideRequest;

  @override
  $Res call({
    Object? pick_up_address = freezed,
    Object? drop_off_address = freezed,
    Object? price = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_RideRequest(
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
class _$_RideRequest implements _RideRequest {
  const _$_RideRequest(
      {required this.pick_up_address,
      required this.drop_off_address,
      required this.price,
      required this.status});

  factory _$_RideRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RideRequestFromJson(json);

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
    return 'RideRequest(pick_up_address: $pick_up_address, drop_off_address: $drop_off_address, price: $price, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RideRequest &&
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
      const DeepCollectionEquality().hash(pick_up_address),
      const DeepCollectionEquality().hash(drop_off_address),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_RideRequestCopyWith<_$_RideRequest> get copyWith =>
      __$$_RideRequestCopyWithImpl<_$_RideRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RideRequestToJson(
      this,
    );
  }
}

abstract class _RideRequest implements RideRequest {
  const factory _RideRequest(
      {required final String pick_up_address,
      required final String drop_off_address,
      required final String price,
      required final String status}) = _$_RideRequest;

  factory _RideRequest.fromJson(Map<String, dynamic> json) =
      _$_RideRequest.fromJson;

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
  _$$_RideRequestCopyWith<_$_RideRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
