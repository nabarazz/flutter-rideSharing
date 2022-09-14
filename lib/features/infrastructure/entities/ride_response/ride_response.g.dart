// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RideResponse _$$_RideResponseFromJson(Map<String, dynamic> json) =>
    _$_RideResponse(
      id: json['id'] as String,
      created: json['created'] as String,
      updated: json['updated'] as String,
      pick_up_address: json['pick_up_address'] as String,
      drop_off_address: json['drop_off_address'] as String,
      price: json['price'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_RideResponseToJson(_$_RideResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'updated': instance.updated,
      'pick_up_address': instance.pick_up_address,
      'drop_off_address': instance.drop_off_address,
      'price': instance.price,
      'status': instance.status,
    };
