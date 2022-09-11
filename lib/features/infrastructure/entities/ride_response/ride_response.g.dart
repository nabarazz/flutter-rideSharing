// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RideResponse _$$_RideResponseFromJson(Map<String, dynamic> json) =>
    _$_RideResponse(
      id: json['id'] as String,
      driver: Driver.fromJson(json['driver'] as Map<String, dynamic>),
      created: json['created'] as String,
      updated: json['updated'] as String,
      pick_up_address: json['pick_up_address'] as String,
      drop_off_address: json['drop_off_address'] as String,
      price: json['price'] as String,
      status: json['status'] as String,
      passenger: Passenger.fromJson(json['passenger'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RideResponseToJson(_$_RideResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'driver': instance.driver,
      'created': instance.created,
      'updated': instance.updated,
      'pick_up_address': instance.pick_up_address,
      'drop_off_address': instance.drop_off_address,
      'price': instance.price,
      'status': instance.status,
      'passenger': instance.passenger,
    };

_$_Driver _$$_DriverFromJson(Map<String, dynamic> json) => _$_Driver(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      group: json['group'] as String,
    );

Map<String, dynamic> _$$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'group': instance.group,
    };

_$_Passenger _$$_PassengerFromJson(Map<String, dynamic> json) => _$_Passenger(
      id: json['id'] as int,
      password: json['password'] as String,
      is_superuser: json['is_superuser'] as bool,
      username: json['username'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      email: json['email'] as String,
      is_staff: json['is_staff'] as bool,
      is_active: json['is_active'] as bool,
      date_joined: json['date_joined'] as String,
      groups: (json['groups'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_PassengerToJson(_$_Passenger instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'is_superuser': instance.is_superuser,
      'username': instance.username,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'is_staff': instance.is_staff,
      'is_active': instance.is_active,
      'date_joined': instance.date_joined,
      'groups': instance.groups,
    };
