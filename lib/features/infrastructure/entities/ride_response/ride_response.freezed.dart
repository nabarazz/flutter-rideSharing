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
  String get driver => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  String get pickUpAddress => throw _privateConstructorUsedError;
  String get dropOffAddress => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get passenger => throw _privateConstructorUsedError;

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
      String driver,
      String created,
      String updated,
      String pickUpAddress,
      String dropOffAddress,
      String price,
      String status,
      String passenger});
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
    Object? driver = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? pickUpAddress = freezed,
    Object? dropOffAddress = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? passenger = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      pickUpAddress: pickUpAddress == freezed
          ? _value.pickUpAddress
          : pickUpAddress // ignore: cast_nullable_to_non_nullable
              as String,
      dropOffAddress: dropOffAddress == freezed
          ? _value.dropOffAddress
          : dropOffAddress // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      passenger: passenger == freezed
          ? _value.passenger
          : passenger // ignore: cast_nullable_to_non_nullable
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
      String driver,
      String created,
      String updated,
      String pickUpAddress,
      String dropOffAddress,
      String price,
      String status,
      String passenger});
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
    Object? driver = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? pickUpAddress = freezed,
    Object? dropOffAddress = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? passenger = freezed,
  }) {
    return _then(_$_RideResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      pickUpAddress: pickUpAddress == freezed
          ? _value.pickUpAddress
          : pickUpAddress // ignore: cast_nullable_to_non_nullable
              as String,
      dropOffAddress: dropOffAddress == freezed
          ? _value.dropOffAddress
          : dropOffAddress // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      passenger: passenger == freezed
          ? _value.passenger
          : passenger // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RideResponse implements _RideResponse {
  const _$_RideResponse(
      {required this.id,
      required this.driver,
      required this.created,
      required this.updated,
      required this.pickUpAddress,
      required this.dropOffAddress,
      required this.price,
      required this.status,
      required this.passenger});

  factory _$_RideResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RideResponseFromJson(json);

  @override
  final String id;
  @override
  final String driver;
  @override
  final String created;
  @override
  final String updated;
  @override
  final String pickUpAddress;
  @override
  final String dropOffAddress;
  @override
  final String price;
  @override
  final String status;
  @override
  final String passenger;

  @override
  String toString() {
    return 'RideResponse(id: $id, driver: $driver, created: $created, updated: $updated, pickUpAddress: $pickUpAddress, dropOffAddress: $dropOffAddress, price: $price, status: $status, passenger: $passenger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RideResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.driver, driver) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.updated, updated) &&
            const DeepCollectionEquality()
                .equals(other.pickUpAddress, pickUpAddress) &&
            const DeepCollectionEquality()
                .equals(other.dropOffAddress, dropOffAddress) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.passenger, passenger));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(driver),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(updated),
      const DeepCollectionEquality().hash(pickUpAddress),
      const DeepCollectionEquality().hash(dropOffAddress),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(passenger));

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
      required final String driver,
      required final String created,
      required final String updated,
      required final String pickUpAddress,
      required final String dropOffAddress,
      required final String price,
      required final String status,
      required final String passenger}) = _$_RideResponse;

  factory _RideResponse.fromJson(Map<String, dynamic> json) =
      _$_RideResponse.fromJson;

  @override
  String get id;
  @override
  String get driver;
  @override
  String get created;
  @override
  String get updated;
  @override
  String get pickUpAddress;
  @override
  String get dropOffAddress;
  @override
  String get price;
  @override
  String get status;
  @override
  String get passenger;
  @override
  @JsonKey(ignore: true)
  _$$_RideResponseCopyWith<_$_RideResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
mixin _$Driver {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String email,
      String firstName,
      String lastName,
      String group});
}

/// @nodoc
class _$DriverCopyWithImpl<$Res> implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  final Driver _value;
  // ignore: unused_field
  final $Res Function(Driver) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? group = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$$_DriverCopyWith(_$_Driver value, $Res Function(_$_Driver) then) =
      __$$_DriverCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String email,
      String firstName,
      String lastName,
      String group});
}

/// @nodoc
class __$$_DriverCopyWithImpl<$Res> extends _$DriverCopyWithImpl<$Res>
    implements _$$_DriverCopyWith<$Res> {
  __$$_DriverCopyWithImpl(_$_Driver _value, $Res Function(_$_Driver) _then)
      : super(_value, (v) => _then(v as _$_Driver));

  @override
  _$_Driver get _value => super._value as _$_Driver;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? group = freezed,
  }) {
    return _then(_$_Driver(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Driver implements _Driver {
  const _$_Driver(
      {required this.id,
      required this.username,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.group});

  factory _$_Driver.fromJson(Map<String, dynamic> json) =>
      _$$_DriverFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String group;

  @override
  String toString() {
    return 'Driver(id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Driver &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  _$$_DriverCopyWith<_$_Driver> get copyWith =>
      __$$_DriverCopyWithImpl<_$_Driver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverToJson(
      this,
    );
  }
}

abstract class _Driver implements Driver {
  const factory _Driver(
      {required final int id,
      required final String username,
      required final String email,
      required final String firstName,
      required final String lastName,
      required final String group}) = _$_Driver;

  factory _Driver.fromJson(Map<String, dynamic> json) = _$_Driver.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get group;
  @override
  @JsonKey(ignore: true)
  _$$_DriverCopyWith<_$_Driver> get copyWith =>
      throw _privateConstructorUsedError;
}

Passenger _$PassengerFromJson(Map<String, dynamic> json) {
  return _Passenger.fromJson(json);
}

/// @nodoc
mixin _$Passenger {
  int get id => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isSuperuser => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isStaff => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get dateJoined => throw _privateConstructorUsedError;
  List<int>? get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassengerCopyWith<Passenger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengerCopyWith<$Res> {
  factory $PassengerCopyWith(Passenger value, $Res Function(Passenger) then) =
      _$PassengerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String password,
      bool isSuperuser,
      String username,
      String firstName,
      String lastName,
      String email,
      bool isStaff,
      bool isActive,
      String dateJoined,
      List<int>? groups});
}

/// @nodoc
class _$PassengerCopyWithImpl<$Res> implements $PassengerCopyWith<$Res> {
  _$PassengerCopyWithImpl(this._value, this._then);

  final Passenger _value;
  // ignore: unused_field
  final $Res Function(Passenger) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? isSuperuser = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? isStaff = freezed,
    Object? isActive = freezed,
    Object? dateJoined = freezed,
    Object? groups = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSuperuser: isSuperuser == freezed
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isStaff: isStaff == freezed
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      dateJoined: dateJoined == freezed
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PassengerCopyWith<$Res> implements $PassengerCopyWith<$Res> {
  factory _$$_PassengerCopyWith(
          _$_Passenger value, $Res Function(_$_Passenger) then) =
      __$$_PassengerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String password,
      bool isSuperuser,
      String username,
      String firstName,
      String lastName,
      String email,
      bool isStaff,
      bool isActive,
      String dateJoined,
      List<int>? groups});
}

/// @nodoc
class __$$_PassengerCopyWithImpl<$Res> extends _$PassengerCopyWithImpl<$Res>
    implements _$$_PassengerCopyWith<$Res> {
  __$$_PassengerCopyWithImpl(
      _$_Passenger _value, $Res Function(_$_Passenger) _then)
      : super(_value, (v) => _then(v as _$_Passenger));

  @override
  _$_Passenger get _value => super._value as _$_Passenger;

  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? isSuperuser = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? isStaff = freezed,
    Object? isActive = freezed,
    Object? dateJoined = freezed,
    Object? groups = freezed,
  }) {
    return _then(_$_Passenger(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSuperuser: isSuperuser == freezed
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isStaff: isStaff == freezed
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      dateJoined: dateJoined == freezed
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String,
      groups: groups == freezed
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Passenger implements _Passenger {
  const _$_Passenger(
      {required this.id,
      required this.password,
      required this.isSuperuser,
      required this.username,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.isStaff,
      required this.isActive,
      required this.dateJoined,
      final List<int>? groups})
      : _groups = groups;

  factory _$_Passenger.fromJson(Map<String, dynamic> json) =>
      _$$_PassengerFromJson(json);

  @override
  final int id;
  @override
  final String password;
  @override
  final bool isSuperuser;
  @override
  final String username;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final bool isStaff;
  @override
  final bool isActive;
  @override
  final String dateJoined;
  final List<int>? _groups;
  @override
  List<int>? get groups {
    final value = _groups;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Passenger(id: $id, password: $password, isSuperuser: $isSuperuser, username: $username, firstName: $firstName, lastName: $lastName, email: $email, isStaff: $isStaff, isActive: $isActive, dateJoined: $dateJoined, groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Passenger &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.isSuperuser, isSuperuser) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.isStaff, isStaff) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality()
                .equals(other.dateJoined, dateJoined) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isSuperuser),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(isStaff),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(dateJoined),
      const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  _$$_PassengerCopyWith<_$_Passenger> get copyWith =>
      __$$_PassengerCopyWithImpl<_$_Passenger>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassengerToJson(
      this,
    );
  }
}

abstract class _Passenger implements Passenger {
  const factory _Passenger(
      {required final int id,
      required final String password,
      required final bool isSuperuser,
      required final String username,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final bool isStaff,
      required final bool isActive,
      required final String dateJoined,
      final List<int>? groups}) = _$_Passenger;

  factory _Passenger.fromJson(Map<String, dynamic> json) =
      _$_Passenger.fromJson;

  @override
  int get id;
  @override
  String get password;
  @override
  bool get isSuperuser;
  @override
  String get username;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  bool get isStaff;
  @override
  bool get isActive;
  @override
  String get dateJoined;
  @override
  List<int>? get groups;
  @override
  @JsonKey(ignore: true)
  _$$_PassengerCopyWith<_$_Passenger> get copyWith =>
      throw _privateConstructorUsedError;
}
