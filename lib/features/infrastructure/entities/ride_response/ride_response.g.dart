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
      pickUpAddress: json['pickUpAddress'] as String,
      dropOffAddress: json['dropOffAddress'] as String,
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
      'pickUpAddress': instance.pickUpAddress,
      'dropOffAddress': instance.dropOffAddress,
      'price': instance.price,
      'status': instance.status,
      'passenger': instance.passenger,
    };

_$_Driver _$$_DriverFromJson(Map<String, dynamic> json) => _$_Driver(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      group: json['group'] as String,
    );

Map<String, dynamic> _$$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'group': instance.group,
    };

_$_Passenger _$$_PassengerFromJson(Map<String, dynamic> json) => _$_Passenger(
      id: json['id'] as int,
      password: json['password'] as String,
      isSuperuser: json['isSuperuser'] as bool,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      isStaff: json['isStaff'] as bool,
      isActive: json['isActive'] as bool,
      dateJoined: json['dateJoined'] as String,
      groups: (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_PassengerToJson(_$_Passenger instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'isSuperuser': instance.isSuperuser,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'isStaff': instance.isStaff,
      'isActive': instance.isActive,
      'dateJoined': instance.dateJoined,
      'groups': instance.groups,
    };
